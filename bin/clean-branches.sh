#!/usr/bin/env bash

# This will attempt to delete all the merged branches from `git branch`
# This intentionally leaves out both the `main` branch and/or the current branch.

# updated 8/19/2024 to use a oneline command from @mfulgo

git branch --merged | grep -e -v '(^\*|main)' | xargs git branch -d

git remote prune origin
