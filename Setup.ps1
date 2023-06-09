Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'));
choco install -y sql-server-management-studio --force; 
choco install -y docker-desktop; 
choco install -y dotnet-6.0-sdk;
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi;
Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; 
rm .\AzureCLI.msi; 
mkdir workspace;
cd workspace;
git clone https://msazure.visualstudio.com/One/_git/ICM;
Write-Host "Done"
