#!/bin/bash

# Prompt user for commit message
read -p "Enter commit message: " commit_message

# Prompt user for branch name (default is 'main')
read -p "Enter branch name (default is 'main'): " branch_name
branch_name=${branch_name:-main}

# Run Git commands in the current working directory
git add .
git commit -m "$commit_message"
git push origin $branch_name

echo "Changes commited and pushed successfully in $(pwd)."
