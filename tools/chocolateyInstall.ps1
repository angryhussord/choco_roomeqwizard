$packageName = 'roomeqwizard' 
$installerType = 'exe' 
$url = 'http://www.roomeqwizard.com/installers/REW_windows_5_16.exe' 
$silentArgs = '-q' 
$validExitCodes = @(0) 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes