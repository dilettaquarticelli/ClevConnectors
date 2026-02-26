
[Setup]
AppName=Clev Plugin
AppVersion=2.0
DefaultDirName={commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back
DefaultGroupName=Clev
OutputDir=.
OutputBaseFilename=Setup_ClevPlugin
Compression=lzma
SolidCompression=yes

[Files]
; Copia le DLL nella cartella del plugin
Source: "clev_v1_back.dll"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back"; Flags: ignoreversion
Source: "websocket-sharp.dll"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back"; Flags: ignoreversion
Source: "clev_logo.png"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back"; Flags: ignoreversion
Source: "Microsoft.CodeAnalysis.CSharp.dll"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back"; Flags: ignoreversion
Source: "Microsoft.CodeAnalysis.dll"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back"; Flags: ignoreversion
Source: "System.Collections.Immutable.dll"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back"; Flags: ignoreversion
Source: "System.Reflection.Metadata.dll"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back"; Flags: ignoreversion

; Copia il file .addin nella cartella Addins
Source: "clev_v1_back.addin"; DestDir: "{commonappdata}\Autodesk\Revit\Addins\2025"; Flags: ignoreversion

[Icons]
; (Opzionale) collegamento per disinstallare
Name: "{group}\Disinstalla Clev Plugin"; Filename: "{uninstallexe}"

[Run]
; (Opzionale) mostra un messaggio alla fine
Filename: "notepad.exe"; Parameters: "{commonappdata}\Autodesk\Revit\Addins\2025\clev_v1_back\readme.txt"; Flags: postinstall runhidden shellexec skipifsilent; Description: "Mostra istruzioni"
