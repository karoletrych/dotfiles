function Call-Git { & git $args }
New-Alias -Name g -Value Call-Git -Force -Option AllScope


function GitAlias-GitStatus { & git status -sb $args }
New-Alias -Name s -Value GitAlias-GitStatus -Force -Option AllScope
function GitAlias-GitDiff { & git diff $args }
New-Alias -Name d -Value GitAlias-GitDiff -Force -Option AllScope

function GitAlias-GitShow { & git show $args }
New-Alias -Name gs -Value GitAlias-GitShow -Force -Option AllScope


function GitAlias-GitStashPush { & git stash push -u $args }
New-Alias -Name gspu -Value GitAlias-GitStashPush -Force -Option AllScope

function GitAlias-GitStashPop { & git stash pop $args }
New-Alias -Name gspo -Value GitAlias-GitStashPop -Force -Option AllScope

function GitAlias-GitStashApply { & git stash apply $args }
New-Alias -Name gsa -Value GitAlias-GitStashApply -Force -Option AllScope

function GitAlias-GitStashList { & git stash list --stat $args }
New-Alias -Name gsl -Value GitAlias-GitStashList -Force -Option AllScope


function GitAlias-GitFetch { & git fetch $args }
New-Alias -Name gf -Value GitAlias-GitFetch -Force -Option AllScope

function GitAlias-GitPullRebaseOrigin { & git pull --rebase origin $args }
New-Alias -Name gpro -Value GitAlias-GitPullRebaseOrigin -Force -Option AllScope


function GitAlias-GitResetHard { & git reset --hard $args }
New-Alias -Name grh -Value GitAlias-GitResetHard -Force -Option AllScope

function GitAlias-GitCommit { & git commit -ev $args }
New-Alias -Name gco -Value GitAlias-GitCommit -Force -Option AllScope

function GitAlias-GitCommitMessage { & git commit -m $args }
New-Alias -Name gcm -Value GitAlias-GitCommitMessage -Force -Option AllScope

function GitAlias-GitAdd { & git add --all $args }
New-Alias -Name gaa -Value GitAlias-GitAdd -Force -Option AllScope

function GitAlias-GitAdd { & git add -i $args }
New-Alias -Name gai -Value GitAlias-GitAdd -Force -Option AllScope

function GitAlias-GitTree { & git log --graph --oneline --decorate --pretty=format:'%C(yellow)%h|%Cred%ad|%Cblue%an|%Cgreen%d %Creset%s' --date=short $args }
New-Alias -Name gt -Value GitAlias-GitTree -Force -Option AllScope

function GitAlias-GitLog { & git log --oneline --pretty=format:'%C(yellow)%h|%Cred%ad|%Cblue%an|%Cgreen%d %Creset%s' --date=short $args }
New-Alias -Name gl -Value GitAlias-GitLog -Force -Option AllScope

function GitAlias-GitPush { & git push $args }
New-Alias -Name gps -Value GitAlias-GitPush -Force -Option AllScope
function GitAlias-GitPull { & git pull $args }
New-Alias -Name gpl -Value GitAlias-GitPull -Force -Option AllScope



function GitAlias-GitBranchList { & git branch --list $args }
New-Alias -Name gbl -Value GitAlias-GitBranchList -Force -Option AllScope


function AzAlias-CreatePrAmron { & az repos pr create  --auto-complete --squash --repository AMRON --source-branch (git rev-parse --abbrev-ref HEAD) --description (git rev-parse --abbrev-ref HEAD) --target-branch $args[0] --delete-source-branch --work-items $args[1]}
New-Alias -Name pra -Value AzAlias-CreatePrAmron -Force -Option AllScope

function AzAlias-ReviewPrAmron { & cd C:/R/amroncopy; git fetch --all; git checkout --track "origin/$args"; git pull; rider "c:\R\amroncopy\Amron3\Amron3.sln" }
New-Alias -Name prrev -Value AzAlias-ReviewPrAmron -Force -Option AllScope



function AzAlias-CreatePrTax { & az repos pr create -r VSoft_TaxReporting -s (git rev-parse --abbrev-ref HEAD) -t $args --delete-source-branch}
New-Alias -Name prt -Value AzAlias-CreatePrTax -Force -Option AllScope


function AzAlias-CreatePrSpecific { & az repos pr create -r TaxReportingSpecific -s (git rev-parse --abbrev-ref HEAD) -t $args --delete-source-branch }
New-Alias -Name prs -Value AzAlias-CreatePrSpecific -Force -Option AllScope


function GitAlias-GitBranchListRemote { & git branch --list -r $args }
New-Alias -Name gblr -Value GitAlias-GitBranchList -Force -Option AllScope
function GitAlias-GitRemote { & git remote -v $args }
New-Alias -Name r -Value GitAlias-GitRemote -Force -Option AllScope

function GitAlias {get-alias | Where-Object {$_.Definition.StartsWith("GitAlias")}} 


function gch {
 git checkout "$((git branch --all | fzf).Trim())"
}

function gcht {
 $name = "$((git branch --all | fzf).Trim())"
 git checkout -t $name
}


function GitAlias-AddCommitPush { &     git add -A;    git commit -m $args;    git push;}
New-Alias -Name gacp -Value GitAlias-AddCommitPush -Force -Option AllScope

function GitAlias-CommitAmend { & git commit --amend --no-edit }
New-Alias -Name gca -Value GitAlias-CommitAmend -Force -Option AllScope

function GitAlias-AmendPush { &     git add -A;    git commit --amend --no-edit;    git push --force-with-lease;}
New-Alias -Name gg -Value GitAlias-AmendPush -Force -Option AllScope

function GitAlias-GitStart { & git stash -u; git checkout dev; git pull; git checkout -b $args; }
New-Alias -Name gstart -Value GitAlias-GitStart -Force -Option AllScope



function Alias-Rgf { & rg --files | rg $args}
New-Alias -Name rgf -Value Alias-Rgf -Force -Option AllScope


