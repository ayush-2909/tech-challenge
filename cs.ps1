#Function 4 -Install Chocolatey
Function InstallChocolatey
{   
    #[Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls
    #[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" 
    $env:chocolateyUseWindowsCompression = 'true'
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) -Verbose
    choco feature enable -n allowGlobalConfirmation

}

#Function 8 -Install Azure Powershell Az Module
Function InstallAzPowerShellModule
{
    choco install az.powershell -y -force

}

#Function 9
Function InstallAzCLI
{
    choco install azure-cli -y -force
}


#Function 10
Function Install7Zip
{

    choco install 7zip.install -y -force

}

#Function 11
Function InstallEdgeChromium
{

    choco install microsoft-edge -y -force
    $WshShell = New-Object -comObject WScript.Shell
    $Shortcut = $WshShell.CreateShortcut("C:\Users\Public\Desktop\Azure Portal.lnk")
    $Shortcut.TargetPath = """C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"""
    $argA = """https://portal.azure.com"""
    $Shortcut.Arguments = $argA 
    $Shortcut.Save()

}


InstallChocolatey
InstallAzPowerShellModule
InstallAzCLI
Install7Zip
InstallEdgeChromium