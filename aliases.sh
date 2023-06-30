# Aliases
alias g=git
alias gst='git status'
alias gp='git push'
alias gd='git diff'
alias gb='git branch'
alias wip='git wip'
alias pr='git push -u origin HEAD && gh pr create -w'
alias pull='git pull origin $(git rev-parse --abbrev-ref HEAD) && git cleanup && git cleanup-squashed'
alias git-cleanup-squashed='git checkout -q \"$(git defaultbranch)\" && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base \"$(git defaultbranch)\" $branch) && [[ $(git cherry \"$(git defaultbranch)\" $(git commit-tree $(git rev-parse "$branch^{tree}") -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done'
