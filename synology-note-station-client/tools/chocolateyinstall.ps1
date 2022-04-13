$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://global.download.synology.com/download/Utility/NoteStationClient/2.2.2-609/Windows/i686/synology-note-station-client-2.2.2-609-win-x86-Setup.exe'
$url64      = 'https://global.download.synology.com/download/Utility/NoteStationClient/2.2.2-609/Windows/x86_64/synology-note-station-client-2.2.2-609-win-x64-Setup.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Synology Note Station Client*'

  checksum      = '16690c27a366bfdf76b09f35266a45b7'
  checksumType  = 'md5'
  checksum64    = 'c8c2b16eb740be2c1a82a212f64e8d26'
  checksumType64= 'md5'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
