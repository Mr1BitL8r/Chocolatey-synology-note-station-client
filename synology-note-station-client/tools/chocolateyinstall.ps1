$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://global.download.synology.com/download/Utility/NoteStationClient/2.2.1-553/Windows/i686/synology-note-station-client-2.2.1-553-win-x86-Setup.exe'
$url64      = 'https://global.download.synology.com/download/Utility/NoteStationClient/2.2.1-553/Windows/x86_64/synology-note-station-client-2.2.1-553-win-x64-Setup.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Synology Note Station Client*'

  checksum      = '25f817fa390d49e0b6a4a3bfef42a3bd'
  checksumType  = 'md5'
  checksum64    = 'ab90296385fc62d386b09ff028a2215d'
  checksumType64= 'md5'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
