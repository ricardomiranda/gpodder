; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{ABE123A1-41D1-4917-8E1E-C7E37991B673}
AppName=gPodder
AppVersion=3.0.0
;AppVerName=gPodder 3.0.0
AppPublisher=Thomas Perl
AppPublisherURL=http://gpodder.org/
AppSupportURL=http://gpodder.org/
AppUpdatesURL=http://gpodder.org/
DefaultDirName={pf}\gPodder
DefaultGroupName=gPodder
LicenseFile=C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\COPYING
InfoBeforeFile=C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\README
OutputDir=C:\Dokumente und Einstellungen\thp\Desktop\x
OutputBaseFilename=gpodder-3.0.0-setup
Compression=lzma
SolidCompression=yes
WizardSmallImageFile=C:\Dokumente und Einstellungen\thp\Desktop\x\wizard-small-image.bmp
WizardImageFile=C:\Dokumente und Einstellungen\thp\Desktop\x\wizard-image.bmp

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\gpodder.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\COPYING"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\gpo.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\README"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\bin\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\data\*"; DestDir: "{app}\data"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Dokumente und Einstellungen\thp\Desktop\x\gpodder-3.0.0-win32\src\*"; DestDir: "{app}\src"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\gPodder"; Filename: "{app}\gpodder.exe"
Name: "{group}\gPodder (CLI)"; Filename: "{app}\gpo.exe"
Name: "{group}\{cm:ProgramOnTheWeb,gPodder}"; Filename: "http://gpodder.org/"
Name: "{group}\{cm:UninstallProgram,gPodder}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\gPodder"; Filename: "{app}\gpodder.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\gPodder"; Filename: "{app}\gpodder.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\gpodder.exe"; Description: "{cm:LaunchProgram,gPodder}"; Flags: nowait postinstall skipifsilent
