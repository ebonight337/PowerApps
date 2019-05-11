
#---------------------------------------------
# Power Apps接続
#---------------------------------------------
Import-Module -Name Microsoft.PowerApps.Administration.PowerShell
Import-Module -Name Microsoft.PowerApps.PowerShell
$pass = ConvertTo-SecureString "Password" -AsPlainText -Force
Add-PowerAppsAccount -Username "UserID" -Password $pass

# Power Appsの環境一覧
$powerAppsEnv = Get-AdminPowerAppEnvironment
$powerAppsEnv | ConvertTo-Json | Out-File -FilePath C:\temp\PowerAppsEnv.json -Encoding default

# Power Apps環境の役割一覧
$powerAppsEnvRole = Get-AdminPowerAppEnvironmentRoleAssignment
$powerAppsEnvRole | ConvertTo-Json | Out-File -FilePath C:\temp\PowerAppsEnvRole.json -Encoding default

# Power Appsのアプリ一覧
$powerAppsList = Get-AdminPowerApp
$powerAppsList | ConvertTo-Json | Out-File -FilePath C:\temp\PowerAppsList.json -Encoding default

# Power AppsのFlow情報一覧
$powerAppsFlowProperty = Get-AdminFlow
$powerAppsFlowProperty | ConvertTo-Json | Out-File -FilePath C:\temp\PowerAppsFlowProperty.json -Encoding default

# Power AppsのDLPに関するプロパティ
$powerAppsDlpPolicies = Get-AdminDlpPolicy
$powerAppsDlpPolicies | ConvertTo-Json | Out-File -FilePath C:\temp\PowerAppsDlpPolicies.json -Encoding default
