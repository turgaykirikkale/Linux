for example you are monitorng Github repository if there is some vulnerabilties on repo or you are creating some CICD pipeline on this repo basically you own this repository and now some ask you that ı dont have access that repo ı just want to see who has access this particular repository you will go setting you will find the who has access you you send the screen shot the asker. 

But as a devops engineer you want to understand that daily basics and someone desing your orginazations if this person has access to this repo ypu have to revoke the access day-to-day basis you want to go to github repository and see who has access the this repository some one wants to read access , someone wants to write access insted of everytime login and check the repository you can write a schell script 

Schell Script Request ==> Github Integrations ==> ıf you wanna talk there are two way one is API other way CLI 

API==> Application interface I am talking wiht github.com through the User Interface (UI) from browser but wwe will use programatically 

==> there is one command in schell scripting it 's CURL command , for python it is REQUEST command you will use HTTP protocols and for python there modules for python. you can get all information like these. As Devops enginner you dont write the APIs but you use the API's like boto3,
And AWS,Jenkins, Gitlab all of them have their API written by the developers for everything there API reference documentation 

GITHUB API REST DOCUMANTATION  ==> you will search for PULL REQUEST ===> https://api.github.com/repos/OWNER/REPO/pulls like these

this create a issues ==> https://api.github.com/repos/OWNER/REPO/issues \
  -d '{"title":"Found a bug","body":"I'\''m having a problem with this.","assignees":["octocat"],"milestone":1,"labels":["bug"]}'

Today how can we list to people who has access to repo 


    #!/bin/bash

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

        # Fetch the list of collaborators on the repository
        collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

        # Display the list of collaborators with read access
        if [[ -z "$collaborators" ]]; then
            echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
        else
            echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
            echo "$collaborators"
        fi
    }

    # Main script

    echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
    list_users_with_read_access
