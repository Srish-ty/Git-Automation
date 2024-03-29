#!/bin/bash

# Prompt user for commit message
read -p "Enter commit message: " commit_message

# Prompt user for branch name (default is 'main')
read -p "Enter branch name (default is 'main'): " branch_name
branch_name=${branch_name:-main}

current_directory=$(pwd)
origin_url=$(git config --get remote.origin.url)

# Run Git commands in the current working directory
git add .
echo -e '\033[0;35m1.Staged all files \n \033[0m'

git commit -m "$commit_message"
echo -e '\033[0;32m2.Committed changes !\n \033[0m'
git push origin $branch_name

echo -e "\n\033[0;36mChanges committed and pushed successfully to \033[0;35m${origin_url}\033[0m \033[0;36mbranch \033[0;35m${branch_name}\033[0m \033[0;36mfrom ${current_directory}!\033[0m\n\n\n\n"
