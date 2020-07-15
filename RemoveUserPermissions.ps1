# To remove the user permissions from SPO using Pnp power shell
# in order to work you need to have latest version of pnp installed.
# If pnp powershell module is not installed or updated to latest version 
# please visit https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-pnp/sharepoint-pnp-cmdlets?view=sharepoint-ps 
# Note: 
# Replace variable $siteURL with correct site name
# substitute correct tenant admin URL
# substitute correct user UPN


$siteUrl = 'https://company.sharepoint.com/sites/sitename'
Connect-PnPOnline -Url https://company-admin.sharepoint.com -UseWebLogin
Connect-PnPOnline -url $siteUrl -UseWebLogin
Get-PnPUser | ? Email -eq "UserUPN" | Remove-PnPUser 
