# Set my Oh My Posh theme for the PowerShell prompt.
oh-my-posh --init --shell pwsh --config "$env:USERPROFILE\my-config\oh-my-posh\my_omp_theme.omp.json" | Invoke-Expression
# Terminal Icons.
Import-Module -Name Terminal-Icons
# Set PSReadLine options.
Set-PSReadLineOption -PredictionSource History
# Start ssh-agent when PowerShell starts.
Start-Service ssh-agent
