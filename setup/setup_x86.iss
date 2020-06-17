[Setup]
AppName=Open CWS Anti-virus
AppVersion=1.0
AppCopyright=© КонтинентСвободы.рф
AppId={{ACB5FBB5-EF5B-4833-A778-CFBA451547DD}
LicenseFile=D:\av\Open CWS Anti-virus\setup\Project\LICENSE.RTF
DefaultDirName={sd}\Open CWS Anti-virus\
DefaultGroupName=Open CWS Anti-virus\
AppPublisher=Open CWS Anti-virus
AppPublisherURL=https://КонтинентСвободы.рф
AppSupportURL=https://КонтинентСвободы.рф
AppUpdatesURL=https://КонтинентСвободы.рф
AppComments=Антивирус с открытым исходным кодом.
UninstallDisplayName=Open CWS Anti-virus
UninstallDisplaySize=1
VersionInfoVersion=1.0
VersionInfoCompany=Open CWS Anti-virus
VersionInfoDescription=Антивирус с открытым исходным кодом.
VersionInfoCopyright=© КонтинентСвободы.рф
VersionInfoProductName=Open CWS Anti-virus
VersionInfoProductVersion=1.0
UninstallDisplayIcon={uninstallexe}
AllowCancelDuringInstall=False
UninstallRestartComputer=True
UserInfoPage=True
AlwaysRestart=True
Compression=lzma2/ultra
InternalCompressLevel=ultra

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Dirs]
Name: "{app}\__installer_files"
Name: "{app}\bin"
Name: "{app}\bin\db"
Name: "{app}\bin\doc"
Name: "{app}\bin\img"
Name: "{app}\bin\log"
Name: "{app}\bin\Microsoft.VC80.CRT"
Name: "{app}\bin\quarantine"
Name: "{app}\bin\doc\images"

[Files]
Source: "Project\NOTE.TXT"; DestDir: "{app}"; Flags: ignoreversion
Source: "Project\RP_Agent.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Project\SENTINEL.VXD"; DestDir: "{app}"; Flags: ignoreversion
Source: "Project\SentinelRecover.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "Project\__installer_files\install_settings.exe"; DestDir: "{app}\__installer_files"; Flags: ignoreversion
Source: "Project\bin\db\bytecode.cvd"; DestDir: "{app}\bin\db"
Source: "Project\bin\db\daily.cvd"; DestDir: "{app}\bin\db"
Source: "Project\bin\db\main.cvd"; DestDir: "{app}\bin\db"
Source: "Project\bin\doc\User_Manual_EN_US.html"; DestDir: "{app}\bin\doc"
Source: "Project\bin\doc\images\finished_page0.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\finished_page1.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\inst_main.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\install_location.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\license_window.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\main_window.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\readme_window.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\ready_page.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\start_group.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\doc\images\user_information_window.JPG"; DestDir: "{app}\bin\doc\images"; Flags: ignoreversion
Source: "Project\bin\img\icon.ico"; DestDir: "{app}\bin\img"; Flags: ignoreversion
Source: "Project\bin\img\title.png"; DestDir: "{app}\bin\img"; Flags: ignoreversion
Source: "Project\bin\log\memory.log"; DestDir: "{app}\bin\log"; Flags: ignoreversion
Source: "Project\bin\log\scan.log"; DestDir: "{app}\bin\log"; Flags: ignoreversion
Source: "Project\bin\log\update.log"; DestDir: "{app}\bin\log"; Flags: ignoreversion
Source: "Project\bin\Microsoft.VC80.CRT\Microsoft.VC80.CRT.manifest"; DestDir: "{app}\bin\Microsoft.VC80.CRT"; Flags: ignoreversion
Source: "Project\bin\Microsoft.VC80.CRT\msvcm80.dll"; DestDir: "{app}\bin\Microsoft.VC80.CRT"; Flags: ignoreversion
Source: "Project\bin\Microsoft.VC80.CRT\msvcp80.dll"; DestDir: "{app}\bin\Microsoft.VC80.CRT"; Flags: ignoreversion
Source: "Project\bin\Microsoft.VC80.CRT\msvcr80.dll"; DestDir: "{app}\bin\Microsoft.VC80.CRT"; Flags: ignoreversion
Source: "Project\bin\AUTHORS.TXT"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\ClamWin.conf"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\Contact us.url"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\FScan.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\Homepage.url"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\libclamav.dll"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\libclamav_llvm.dll"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\libclamunrar.dll"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\libclamunrar_iface.dll"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\LICENSE.RTF"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\MMscan.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\MSScmd.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\MSSgui.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\MSupd.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\ODupd.conf"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\ODupd.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\QScan.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\Quarantine.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\README.TXT"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\Sscan1.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\Sscan2.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\Submit Malware Sample.url"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\WARNING.TXT"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\bin\WHAT'S_NEW.TXT"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "Project\stop_services.exe"; DestDir: "{app}"; DestName: "stop_services.exe"

[Run]
Filename: "{app}\__installer_files\install_settings.exe"; WorkingDir: "{app}\__installer_files"; Flags: waituntilterminated; Description: "Installs Open CWS Anti-virus settings."; StatusMsg: "Installing settings..."

[Messages]
ClickFinish=Нажмите «Готово», чтобы выйти из Open CWS Anti-Virus.
ConfirmUninstall=Вы действительно хотите полностью удалить Open CWS Anti-Virus и все его компоненты?
FileExists=Файл уже существует. Вы хотите, чтобы программа установки обновила его?
FinishedHeadingLabel=Завершение установки Open CWS Anti-Virus
LicenseLabel3=

[Icons]
Name: "{group}\Open CWS Anti-virus"; Filename: "{app}\bin\MSSgui.exe"; WorkingDir: "{app}\bin"; IconFilename: "{app}\bin\MSSgui.exe"; IconIndex: 0
Name: "{group}\Open CWS Anti-virus Help"; Filename: "{app}\bin\doc\User_Manual_EN_US.html"; WorkingDir: "{app}\bin\doc"; IconFilename: "{app}\bin\MSSgui.exe"; IconIndex: 1
Name: "{group}\Uninstall Open CWS Anti-virus"; Filename: "{uninstallexe}"; WorkingDir: "{app}"; IconFilename: "{app}\bin\MSSgui.exe"; IconIndex: 0
Name: "{commondesktop}\Open CWS Anti-virus"; Filename: "{app}\bin\MSSgui.exe"; WorkingDir: "{app}\bin"; IconFilename: "{app}\bin\MSSgui.exe"; IconIndex: 0

[Registry]
Root: "HKCU"; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "MicroStar Anti-Virus"; ValueData: """{app}\RP_Agent.exe"""; Flags: uninsdeletevalue

[UninstallRun]
Filename: "{app}\stop_services.exe"; WorkingDir: "{app}"; Flags: waituntilterminated
