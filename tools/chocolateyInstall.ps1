$ErrorActionPreference = 'Stop';

$packageName = 'roomeqwizard'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)";
$installerType = 'EXE'
$url = 'http://www.roomeqwizard.com/installers/REW_windows_5_18.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = $installerType
  url           = $url
  url64bit      = $url64
  silentArgs    = '-q'
  validExitCodes= @(0)
  softwareName  = 'roomeqwizard*'
  checksum      = '2AFC9DE36A2CEA502C17D9FD914592CC'
  checksumType  = 'sha256'
};

Install-ChocolateyPackage @packageArgs;
