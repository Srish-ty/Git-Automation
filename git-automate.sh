#!/bin/bash

# Prompt user for commit message
read -p "Enter commit message: " commit_message

# Prompt user for branch name (default is 'main')
read -p "Enter branch name (default is 'main'): " branch_name
branch_name=${branch_name:-main}

# Run Git commands in the current working directory
git add .
echo -e "\n1.Staged changes\n"

git commit -m "$commit_message"
echo -e "\n2.Committed !\n"
git push origin $branch_name

echo -e "\n \nChanges commited and pushed successfully in to Origin from $(pwd).!! \n"
