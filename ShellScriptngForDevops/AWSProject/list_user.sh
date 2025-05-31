#!/bin/bash

##you will pass username and token with export command to inside.
##export username='Turgay'
##export token='<token_from_github_repository>'
##when you execute this .sh you need to pass two argument ./list_user.sh <REPO_OWNER> <REPO_NAME>

#first you have to invoke this function for requirements
helper()

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"

    # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Fetch the list of collaborators on the repository || there is particular search ı select which user has permission for pull and o write .login in the that users
    collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')" 

    # Display the list of collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}


function helper{

    #if list of command lines arguments is not equal too expected_command_args ı can write please 
    expected_command_args= 2
    if[ $# -ne expected_command_args]; then
     echo "please execute the script with required cmd args"
     echo "and if there are other requirement you can write here"
}
# Main script

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access