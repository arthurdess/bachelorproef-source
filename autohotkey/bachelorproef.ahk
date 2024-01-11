#Requires Autohotkey v2

^!s::
{
guiLoginAzure := Gui()
guiLoginAzure.OnEvent('Close', (*) => ExitApp())
guiLoginAzure.Title := "Welcome to the AutoHotkey script!"
guiLoginAzure.Add("Button", "Default", "Login to Azure").OnEvent("Click", OK_Click_Login)
guiLoginAzure.Add("Button", "Default", "Exit the Application").OnEvent("Click", OK_Click_Exit)
guiLoginAzure.Show("w450 h150")

guiSelectDeploy := Gui()
guiSelectDeploy.OnEvent('Close', (*) => ExitApp())
guiSelectDeploy.Title := "Login succesful!"
guiSelectDeploy.Add("Button", "Default", "Deploy a Virtual Machine").OnEvent("Click", OK_Click_Deploy)
guiSelectDeploy.Add("Button", "Default", "Exit the Application").OnEvent("Click", OK_Click_Exit)

guiChooseOs := Gui()
guiChooseOs.OnEvent('Close', (*) => ExitApp())
guiChooseOs.Title := "Choose the OS!"
guiChooseOs.Add("Button", "Default", "Windows").OnEvent("Click", OK_Click_Windows)
guiChooseOs.Add("Button", "Default", "Ubuntu").OnEvent("Click", OK_Click_Ubuntu)

OK_Click_Exit(*)
{
    ExitApp()
} 

OK_Click_Login(*)
{
    guiLoginAzure.Hide()

    DirCreate "C:\Users\Arthur\Downloads\AHKDeploy"
    DirCopy "D:\Documents\Onedrive Hogent\OneDrive - Hogeschool Gent\HoGent\2023\Bachelorproef\bachelorthesis\autohotkey", "C:\Users\Arthur\Downloads\AHKDeploy\autohotkey", 1
    Run("*RunAs PowerShell.exe -NoExit -Command az login --service-principal -u 'CLIENTID' -p 'KEYSECRET' --tenant 'TENANTID'; az account subscription list; az group create --location 'westeurope' --name 'bachelorproef-rg'")
    
    Sleep 5000
    guiSelectDeploy.Show("w450 h150")
}

OK_Click_Deploy(*)
{
    guiSelectDeploy.Hide()
    guiChooseOs.Show("w450 h150")
}

OK_Click_Windows(*)
{
    paramfile := "'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\paramwin.json'"

    IB_VmConfig(paramfile)
}

OK_Click_Ubuntu(*)
{
    paramfile := "'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\param.json'"

    IB_VmConfig(paramfile)
}

IB_VmConfig(paramfile)
{
    guiChooseOs.Hide()

    SetWorkingDir "C:\Users\Arthur\Downloads\AHKDeploy\autohotkey"

    paramfilepath := paramfile

    command := ""
    
    IB_vmLocation := InputBox("Please enter the location of the VM, 'default' for default value", "VM location", "w450 h150")
    if IB_vmLocation.Value != "default"
    {
        command := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replace.py' westeurope " IB_vmLocation.Value " " paramfilepath
        Run("*RunAs PowerShell.exe -Command " command)
    }
        
    IB_vmName := InputBox("Please enter a name for the VM, 'default' for default value", "VM name", "w450 h150")
    if IB_vmName.Value != "default"
    {
        command := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replace.py' bachelorproefvm " IB_vmName.Value " " paramfilepath
        Run("*RunAs PowerShell.exe -Command " command)
    }
        
    IB_vmUsername := InputBox("Please enter a username, 'default' for default value", "VM username", "w450 h150")
    if IB_vmUsername.Value != "default"
    {
        command := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replace.py' bachelorproefuser " IB_vmUsername.Value " " paramfilepath
        Run("*RunAs PowerShell.exe -Command " command)
    } 

    IB_vmPassword := InputBox("Please enter a password, 'default' for default value", "VM password", "w450 h150")
    if IB_vmPassword.Value != "default"
    {
        command := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replace.py' bachelorproefww " IB_vmPassword.Value " " paramfilepath
        Run("*RunAs PowerShell.exe -Command " command)
    }

    IB_vmSize := InputBox("Please enter the size of the VM, 'default' for default value", "VM size", "w450 h150")
    if IB_vmSize.Value != "default"
    {
        command := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replace.py' VMSIZEDEFAULT " IB_vmSize.Value " " paramfilepath
        Run("*RunAs PowerShell.exe -Command " command)
    }

    IB_vmOsDiskType := InputBox("Please enter the OS disk type of the VM, 'default' for default value", "VM OS Disk type", "w450 h150")
    if IB_vmOsDiskType.Value != "default"
    {
        command := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replace.py' OSDISKTYPEDEFAULT " IB_vmOsDiskType.Value " " paramfilepath
        Run("*RunAs PowerShell.exe -Command " command)
    }

    IB_vmPipSku := InputBox("Please enter the Public IP Sku of the VM, 'default' for default value", "VM PiP Sku", "w450 h150")
    if IB_vmName.Value != "default"
    {
        command := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replace.py' PIPSKUDEFAULT " IB_vmPipSku.Value " " paramfilepath
        Run("*RunAs PowerShell.exe -Command " command)
    }

    replaceDefaultsCommand := "python 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\replaceDefaults.py' " paramfilepath
    RunWait("*RunAs PowerShell.exe -Command " replaceDefaultsCommand)

    deployCommand := "az login --service-principal -u 'CLIENTID' -p 'KEYSECRET' --tenant 'TENANTID'; az deployment group create --name deploybp --resource-group bachelorproef-rg --template-file 'c:\Users\Arthur\Downloads\AHKDeploy\autohotkey\main.bicep' --parameters " paramfilepath
    Run("*RunAs PowerShell.exe -NoExit -Command " deployCommand)

    MsgBox "The Virtual Machine is deployed to Azure!"
}
}
return