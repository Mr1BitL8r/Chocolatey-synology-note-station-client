## Chocolatey community package for Synology Note Station Client
This is just a [Chocolatey community](https://community.chocolatey.org/) package for installing and uninstalling the Synology Note Station Client on Windows.

## How to upgrade for a newer version
If there is a new version available of the Synology Note Station Client:
1. Navigate into the _sub_directory: **synology-note-station-client/tools**
2. Adjust the file **chocolateyinstall.ps1**, so that entries
    * **$url** is set to the download URL of the 32-bit Setup.exe
    * **$url64** is set to the download URL of the 64-bit Setup.exe
    * **checksum** is set to the md5 checksum of the 32-bit Setup.exe
    * **checksum64** is set to the md5 checksum of the 64-bit Setup.exe
    _Hint_: You can find the download links and MD5 checksums e.g. on https://www.synology.com/de-de/support/download/DS716+II?version=7.0#utilities when clicking on the "Download" button next to the "Synology Note Station Client".
3. Navigate into the parent directory: **synology-note-station-client**
4. Adjust the file **synology-note-station-client.nuspec**, so that the
    * <version> is correct, but make sure **NOT** to use the '-', so e.g. "2.2.2-609" needs to be "2.2.2609" for chocolatey.
    * <copyright> is set to the correct year.
5. Open a PowerShell with **administrator** privileges and navigate into the folder **synology-note-station-client** that is containing the file **synology-note-station-client.nuspec**
    * Create the package for chocolatey via executing the command: _choco pack_
    * _Hint:_ If there are other *.nupkg files than the one that you want to test in the folder, delete or move them.
6. Test the newly created package by 
    * Upgrading it, e.g. via executing: _choco **upgrade** synology-note-station-client -dv -s ._
    * Uninstalling it, e.g. via executing: _choco **uninstall** synology-note-station-client -dv -s ._
    * Installing it, e.g. via executing: _choco **install** synology-note-station-client -dv -s ._
7. Push the package to the chocolatey community repository: _choco push .\synology-note-station-client.**2.2.2.609**.nupkg -s https://push.chocolatey.org/_