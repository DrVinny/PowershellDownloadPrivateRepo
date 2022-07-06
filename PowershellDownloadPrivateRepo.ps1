# This script downloads a private repo with only a URL and access token 


$repoOwn = 'DrVinny'
$repoName = 'PowershellDownloadPrivateRepo'

# $repoBranch = 'main'
# $repoURI = "https://api.github.com/repos/$repoOwn/$repoName/zipball/$repoBranch"
# Main is assumed if $repoBranch is omitted

$repoURI = "https://api.github.com/repos/$repoOwn/$repoName/zipball/"
$token = "<yourAccessToken>"
$headers = @{"Authorization" = "bearer $token"}


$ZipFile = "$pwd\$repoName.zip"
# New-Item $ZipFile -ItemType File -Force

# Write-Host 'Starting downloading the GitHub Repository'
Invoke-RestMethod -Uri $repoURI -OutFile $ZipFile -Method Get -Headers $headers
