#!/bin/bash

# Git Shortcuts and Aliases
# Common git operations made simpler

# Quick status check
alias gs='git status'

# Quick add and commit
alias gac='git add . && git commit -m'

# Quick push
alias gp='git push'

# Quick pull
alias gl='git pull'

# View git log in a nice format
alias glog='git log --oneline --graph --decorate --all'

# Undo last commit (keeps changes)
alias gundo='git reset --soft HEAD~1'

# Show branches
alias gb='git branch -a'

# Quick checkout
alias gco='git checkout'

# Create and checkout new branch
function gcb() {
    if [ -z "$1" ]; then
        echo "Usage: gcb <branch-name>"
        return 1
    fi
    git checkout -b "$1"
}

# Delete local branch
function gbd() {
    if [ -z "$1" ]; then
        echo "Usage: gbd <branch-name>"
        return 1
    fi
    git branch -d "$1"
}

# Show diff of unstaged changes
alias gd='git diff'

# Show diff of staged changes
alias gds='git diff --staged'

# Stash changes
alias gst='git stash'

# Apply stash
alias gsta='git stash apply'

# Usage: Source this file in your .bashrc or .zshrc
# source /path/to/git_shortcuts.sh
