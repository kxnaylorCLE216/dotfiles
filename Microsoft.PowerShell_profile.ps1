Clear-Host
(get-host).UI.RawUI.Backgroundcolor="Black"
Clear-Host

function repos-explorer {ii c:\Users\naylo\source\repos}
function repos-change-dir {cd c:\Users\naylo\source\repos}
function pprofile {code C:\Users\naylo\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1}

$git = "C:\Program Files\Git\cmd\git.exe"

function git-status {
    & $git 'status'
}

function git-checkout {
    & $git 'checkout' $args
}

function git-checkout-branch {
    & $git 'checkout' '-b' $args
}

function git-log {
    & $git 'log' $args
}

function git-add-all {
    & $git 'add' '--all' $args
}

function git-commit {
    & $git 'commit' '-a' '-m' $args
}

function git-commit-add-all {
    & $git 'commit' '-a'
    & $git 'add' '--all'
}

Write-Host 'Welcome to' "$env:computername" -ForegroundColor Green
Write-Host "You are logged in as" "$env:username"
Write-Host "Today:" (Get-Date)
Set-Location c:\Users\naylo\
Write-Host "PowerShell"($PSVersionTable.PSVersion.Major)"awaiting your commands."
new-item alias:np -value C:\Windows\System32\notepad.exe
new-item alias:p -value C:\Windows\System32\mspaint.exe
new-item alias:ghub -value C:\Users\naylo\AppData\Local\GitHubDesktop\GitHubDesktop.exe

$dir = 'C:\Program Files (x86)\'

new-item alias:gvi -value $dir\vim\vim80\gvim.exe
new-item alias:o -value ii
new-item alias:c -value clear
new-item alias:reposEx -value repos-explorer
new-item alias:repos -value repos-change-dir

new-item alias:gs -value git-status
new-item alias:gco -value git-checkout
new-item alias:gcob -value git-checkout-branch
new-item alias:glo -value git-log
new-item alias:ga -value git-add-all
new-item alias:gac -value git-commit-add-all
new-item alias:gcom -value git-commit