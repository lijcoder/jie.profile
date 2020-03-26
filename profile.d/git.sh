function git-branch-name {
    git symbolic-ref --short -q HEAD 2>/dev/null
}

function git-branch-prompt {
    local branch=`git-branch-name`
    if [ $branch ]; then printf "git:(%s)" $branch; fi
}
