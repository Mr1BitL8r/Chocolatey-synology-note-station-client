$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://global.download.synology.com/download/Utility/NoteStationClient/2.2.0-524/Windows/i686/synology-note-station-client-2.2.0-524-win-x86-Setup.exe'
$url64      = 'https://global.download.synology.com/download/Utility/NoteStationClient/2.2.0-524/Windows/x86_64/synology-note-station-client-2.2.0-524-win-x64-Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Synology Note Station Client*'

  checksum      = '7105d3e020ab2454642df2dfd854ab9e'
  checksumType  = 'md5'
  checksum64    = 'e1697305bf11e2f676fef83f37fbb44c'
  checksumType64= 'md5'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
