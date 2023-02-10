git config --global alias.s 'status -sb'
git config --global alias.d 'diff'
git config --global alias.spu 'stash push -u'
git config --global alias.spo 'stash pop'
git config --global alias.sl 'stash list --stat'
git config --global alias.ch 'checkout'
git config --global alias.m 'merge'
git config --global alias.r 'rebase'

#function GitAlias-GitFetch { & git fetch $args }
#New-Alias -Name gf -Value GitAlias-GitFetch -Force -Option AllScope
#
#function GitAlias-GitPullRebaseOrigin { & git pull --rebase origin $args }
#New-Alias -Name gpro -Value GitAlias-GitPullRebaseOrigin -Force -Option AllScope
#
#
#function GitAlias-GitResetHard { & git reset --hard $args }
#New-Alias -Name grh -Value GitAlias-GitResetHard -Force -Option AllScope
#
#function GitAlias-GitCommit { & git commit -ev $args }
#New-Alias -Name gco -Value GitAlias-GitCommit -Force -Option AllScope
#
#function GitAlias-GitAdd { & git add --all $args }
#New-Alias -Name gaa -Value GitAlias-GitAdd -Force -Option AllScope
#
#function GitAlias-GitAdd { & git add -i $args }
#New-Alias -Name gai -Value GitAlias-GitAdd -Force -Option AllScope
#
#
#function GitAlias-GitTree { & git log --graph --oneline --decorate $args }
#New-Alias -Name t -Value GitAlias-GitTree -Force -Option AllScope
#function GitAlias-GitPush { & git push $args }
#New-Alias -Name gps -Value GitAlias-GitPush -Force -Option AllScope
#function GitAlias-GitPull { & git pull $args }
#New-Alias -Name gpl -Value GitAlias-GitPull -Force -Option AllScope
#
#
#function GitAlias-GitBranchList { & git branch $args }
#New-Alias -Name gbl -Value GitAlias-GitBranchList -Force -Option AllScope
#function GitAlias-GitRemote { & git remote -v $args }
#New-Alias -Name r -Value GitAlias-GitRemote -Force -Option AllScope
#
#function GitAlias {get-alias | Where-Object {$_.Definition.StartsWith("GitAlias")}} 
#
