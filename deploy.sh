#!/bin/bash
directory=dist
branch=gh-pages
master_name=main
build_command() {
  ./build.sh
}

echo -e "\033[0;32mDeleting old content...\033[0m"
# rm -rf $directory

echo -e "\033[0;32mChecking out $branch....\033[0m"
# git worktree add $directory $branch

echo -e "\033[0;32mGenerating site...\033[0m"
build_command

latest_commit=$(git log '--format=format:%H' $master_name -1)

# echo -e "\033[0;32mDeploying $branch branch...\033[0m"
# cd $directory &&
#   git add --all &&
#   git commit -m "Build output as of $latest_commit" &&
#   git push origin $branch

echo -e "\033[0;32mCleaning up...\033[0m"
# git worktree remove $directory
