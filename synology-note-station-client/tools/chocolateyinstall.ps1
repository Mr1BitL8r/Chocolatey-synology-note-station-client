$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://global.synologydownload.com/download/Utility/NoteStationClient/2.2.4-703/Windows/i686/synology-note-station-client-2.2.4-703-win-x86-Setup.exe'
$url64      = 'https://global.synologydownload.com/download/Utility/NoteStationClient/2.2.4-703/Windows/x86_64/synology-note-station-client-2.2.4-703-win-x64-Setup.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Synology Note Station Client*'

  checksum      = 'db036480e198c7b0d79a439f82029fec'
  checksumType  = 'md5'
  checksum64    = '7966cbb341290f826bbfa89e2592a1f8'
  checksumType64= 'md5'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
