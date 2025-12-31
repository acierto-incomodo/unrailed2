[Setup]
AppName=Unrailed 2: Back on Track by StormGamesStudios
AppVersion=1.0.3
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\Unrailed2
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\mapsp\Documents\GitHub\unrailed2\output
OutputBaseFilename=Unrailed2_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=unrailed2.ico
VersionInfoVersion=1.0.3.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\mapsp\Documents\GitHub\unrailed2\dist\installer_updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\unrailed2\unrailed2.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\unrailed2\unrailed2.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
Name: "{userdesktop}\Unrailed 2: Back on Track"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\unrailed2.ico"

; Acceso directo en el menú de inicio dentro de la carpeta StormLauncher_HMCL-Edition
Name: "{commonprograms}\StormGamesStudios\Unrailed 2: Back on Track"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\unrailed2.ico"
Name: "{commonprograms}\StormGamesStudios\Desinstalar Unrailed 2: Back on Track"; Filename: "{uninstallexe}"; IconFilename: "{app}\unrailed2.ico"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\Unrailed 2: Back on Track"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\installer_updater.exe"; Description: "Ejecutar Unrailed 2: Back on Track"; Flags: nowait postinstall skipifsilent
