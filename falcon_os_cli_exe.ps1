Clear-Host
$Global:pascode="795990439034034905945495049504950495049509405945034-304-304-304-304-3048493849384938493849039403940304-302-302-302-03-403950459049504950495049504954095049509504950495 0950490549505490495o504904590459 48989459 04590495 04594059 o 49i5045904950 9549054954905409549045905409540954095409549054093409540954095409540954094509540954054954095409540954095409t9054905490549039023940930939540459039309430-940394309403940394039430940394039403490394309430943049039430493049309430940940349094ri4949ro 49w020393399eieiei333eieiei34333eiwoeioeieiieeieiioewjkdfosjnkfvjksdfjoasdjkdsfjkldfjkdfjkfdjlkfdjdklfdjkdfjkdfjkjkfdjkdfjkdfjkdjkdfjkdlfaasdfjjdkfjkfdjkfddfkjfjdkdfdfjkjkdfajkdfaljldfjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjkfeorkoedkfdlokfeldfkerowdik4eoi39439483943948i398439849384398i3e9riejrkjkdjfk384i3948kjfj fj rjehdri9iej"
$cs = "start"
function sys.kernel.regedit.bsk {

Write-Output "FlockInternalScript: Error #3556: Func_not_finished: Please enter the passcode to continue"
$global:panswer=Read-Host""
if ($global:panswer -eq $global:pascode) {
New-item -Path $global:current_path -Name "kreg.khrfbsk" -ItemType File;
Add-Content;
}

}

function sys.kernel.regwriter.bsc {

}

function sys.win.info.wl{
Write-Output "Please wait... Checking system information."
Write-Output "=========================="
Write-Output "WINDOWS INFO"
Write-Output "============================"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
Write-Output "============================"
Write-Output "HARDWARE INFO"
Write-Output "============================"
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
Write-Output "============================"
Write-Ouput "NETWORK INFO"
Write-Output "============================"
ipconfig | findstr IPv4
ipconfig | findstr IPv6
Start-Process https://support.microsoft.com/en-us/windows/windows-10-system-requirements-6d4e9a79-66bf-7950-467c-795cf0386715
}

function sys.command.output.out.echo.command.variable {
$writer = Read-host "enter text to output"
Write-Output $writer
}

function sys.win.man.help {
Write-Output "Sys.win.info:views windows info, opens a tab:windows 10 system requirments.(how to upgrade to windows 10)"
Write-Output "Sys.exit:Exits Flcdos."
Write-Output "Sys.command.output.out.echo.command.variable:Asks for a string to output, and returns the string."
Write-Output "Sys.path.cd:Sets Current Directory to input, Every time you start, the path will be reset."
Write-Output "Sys.path.view:Sees The current Path."
}


function sys.path.cd {
$global:current_path = Read-host "Enter path"
Set-Location $current_path
$global:current_path=Get-Location
$global:current_path=$global:current_path.Path
}

function sys.path.view {
Write-Output $current_path
if ($current_path -eq "") {Write-Output "You can't view a path if nothing is set, silly(nothing is set right now)."}
}

function sys.path.mkdir {
Write-Output "You are currently here:"
Write-Output $global:current_path
$newdir = Read-host "Enter new Directory Name:"
$newdir = $global:current_path+"\"+$newdir
Write-Output "Making Dir:"
write-output $newdir
New-Item $newdir -ItemType Directory
Set-Location $newdir
}

function sys.path.file.del {
Write-Output $current_path
Writ-Output "That is what you're deleting, be carefull which files you delete, do NOT delete any files in: C:\Windows or C:\ unless you know what they do, and you have been given instruction to delete theese."
$delconfirm = Read-Host "Are you sure you want to delete this file,answer using yes or no."
if ($delconfirm -eq "yes") {Remove-Item $current_path}
if ($delconfirm -eq "no") {Write-Error "Please stop, and start the terminal again to continue."}
}

function sys.path.makefile {
$newfilename = Read-Host "Enter Filename:(include file extension)"
New-Item $newfilename -Path $current_path -ItemType file
}

function sys.win.info.nl {
Write-Output "Please wait... Checking system information."
Write-Output "=========================="
Wrie-Output "WINDOWS INFO"
Write-Output "============================"
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
Write-Output "============================"
Write-Output "HARDWARE INFO"
Write-Output "============================"
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
wmic diskdrive get name,model,size
wmic path win32_videocontroller get name
Write-Output "============================"
Write-Ouput "NETWORK INFO"
Write-Output "============================"
ipconfig | findstr IPv4
ipconfig | findstr IPv6
}

while ($true) {
$global:kregloc = $global:current_path + "kreg.reg"
$Title = "Falcon Os v1 alpha cli"
$host.UI.RawUI.WindowTitle = $Title
$global:current_path=Get-Location
$global:current_path=$global:current_path.Path
$starterterminalpromptone = $current_path
$starterterminalprompttwo = " >>> "
$prompt = $starterterminalpromptone + ". Type 'sys.win.man.help' for help " + $starterterminalprompttwo
Write-Host $prompt -NoNewLine
$command = $Host.UI.ReadLine()
if($command -eq "sys.kernel.regedit.bsk") {
  sys.kernel.regedit.bsk
}
if($command -eq "sys.kernel.regwriter.bsc"){
  sys.kernel.regwriter.bsc
}
if ($command -eq "sys.win.info.nl") {
  sys.win.info.nl
}
if ($command -eq "sys.win.man.help") {
  sys.win.man.help
}
if ($command -eq "sys.command.output.out.echo.command.variable") {
  sys.command.output.out.echo.command.variable
}
if ($command -eq "sys.exit") {
  break
}
if ($command -eq "sys.path.cd") {
  sys.path.cd
}
if ($command -eq "sys.path.view") {
  sys.path.view
}
if ($command -eq "sys.screen.cls") {
  Clear-Host
}
if ($command -eq "sys.path.mkdir") {
  sys.path.mkdir
}
if ($command -eq "sys.path.makefile") {
  sys.path.makefile
}
elseif ($cs -eq "start"){}
elseif($cs -eq "command"){Write-Output "Unkown Command"}
else {Write-Output "Unknown command."}
}
Write-Output "Thanks for using Flcdos V1 Alpha Indev!"
#sign powershell scipts HERE:https://youtu.be/_I5TcWTHo8g
