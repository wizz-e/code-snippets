# Git Cheat Sheet

Quick reference for common Git commands.

## Configuration

```bash
# Set user name
git config --global user.name "Your Name"

# Set user email
git config --global user.email "your.email@example.com"

# View configuration
git config --list
```

## Basic Commands

```bash
# Initialize a new repository
git init

# Clone a repository
git clone <url>

# Check status
git status

# Add files to staging
git add <file>
git add .  # Add all files

# Commit changes
git commit -m "Commit message"

# Push changes
git push origin <branch>

# Pull changes
git pull origin <branch>
```

## Branching

```bash
# List branches
git branch

# Create new branch
git branch <branch-name>

# Switch to branch
git checkout <branch-name>

# Create and switch to new branch
git checkout -b <branch-name>

# Delete branch
git branch -d <branch-name>

# Merge branch
git merge <branch-name>
```

## Undoing Changes

```bash
# Discard changes in working directory
git checkout -- <file>

# Unstage file
git reset HEAD <file>

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1

# Revert a commit
git revert <commit-hash>
```

## Stashing

```bash
# Stash changes
git stash

# List stashes
git stash list

# Apply most recent stash
git stash apply

# Apply specific stash
git stash apply stash@{n}

# Drop stash
git stash drop stash@{n}
```

## Viewing History

```bash
# View commit history
git log

# View compact history
git log --oneline

# View history with graph
git log --graph --oneline --all

# View changes in a commit
git show <commit-hash>

# View file history
git log -p <file>
```

## Remote Repositories

```bash
# View remotes
git remote -v

# Add remote
git remote add <name> <url>

# Remove remote
git remote remove <name>

# Fetch from remote
git fetch <remote>

# Push to remote
git push <remote> <branch>
```

## Tagging

```bash
# List tags
git tag

# Create tag
git tag <tag-name>

# Create annotated tag
git tag -a <tag-name> -m "Tag message"

# Push tags
git push origin --tags

# Delete tag
git tag -d <tag-name>
```

## Tips

- Always pull before you push
- Write clear commit messages
- Commit often, but make logical commits
- Use branches for features and fixes
- Review changes before committing
