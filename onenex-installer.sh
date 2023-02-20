#!/bin/bash

# Function to prompt the user to select a starter kit
function select_starter_kit() {
    PS3="Select a Starter Kit: "
    select starter_kit in "laravel"; do
        case $starter_kit in
            "laravel")
                repo_url="https://github.com/laranex/api-starter-kit"
                break
                ;;
            *)
                echo "Invalid option. Please select a valid option."
                ;;
        esac
    done
}

# Function to prompt the user if they want to configure the installation process manually
function configure_manually() {
    # shellcheck disable=SC2162
    read -p "Do you want to configure the installation process manually? (Y/N): " answer
    if [[ $answer =~ [yY](es)* ]]; then
        # Get available branches for the chosen repository
        branches=$(git ls-remote --heads $repo_url | sed 's?.*refs/heads/??' | tr '\n' ' ')
        PS3="Select a Branch: "
        select branch in $branches; do
            break
        done
    else
        branch="master"
    fi
}

# Function to prompt the user to enter a project name


# The main function that will be executed when the user invokes the command
function onenex-installer() {
    if [ -z "$1" ]; then
        # If no argument is provided, print the usage instructions
        echo "Usage: onenex-installer new - Install a new starter kit from https://github.com/onenextech"
    else
        case $1 in
            "new")
                select_starter_kit
                configure_manually
                enter_project_name

                # Clone the repository with the chosen branch and rename the directory to the project name
                # shellcheck disable=SC2154
                git clone --branch $branch $repo_url "$project_name"
                mv ${repo_url##*/} "$project_name"
                # shellcheck disable=SC2164
                cd "$project_name"

                # Remove the .git directory so that the user can start with a fresh repository
                rm -rf .git
                ;;
            *)
                echo "Invalid command. Please use 'onenex new' to create a new project."
                ;;
        esac
    fi
}

# Execute the onenex function with the provided arguments
# shellcheck disable=SC2068
onenex-installer $@
