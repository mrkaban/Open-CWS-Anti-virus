*---------------------------------------------------------------------------*
* Time : 21:34:26    Date : 05/06/2018
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2018 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2018.03.16
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function Main
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
* Get parameters from command line
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_main_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_main_19art1() code
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ICON "img\icon.ico" ;
TITLE "Open CWS Anti-virus" ;
MAIN ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {192,192,192} 

win1.Center ( )
@ 7 ,8 IMAGE image1;
PICTURE "img\title.png";
STRETCH ;
WIDTH 476 HEIGHT 70
DEFINE MAIN MENU
POPUP "Файл"
MENUITEM "Запустить быстрое сканирование системы" Action quickscan()
MENUITEM "Запустить полное сканирование" Action fullscan()
MENUITEM "Запустить сканирование памяти" Action memoryscan()
MENUITEM "Запустить выборочное сканирование" Action selectivescan()
SEPARATOR
MENUITEM "Закрыть" Action closemain()
END POPUP
POPUP "Инструменты"
MENUITEM "Загрузка антивирусных сигнатур" Action updater()
MENUITEM "Открыть карантин" Action openquarantine()
MENUITEM "Отправить подозрительный файл" Action submitsample()
END POPUP
POPUP "Помощь"
MENUITEM "О программе" Action about()
END POPUP
END MENU
@ 321 ,378 BUTTONEX btn1;
CAPTION "Закрыть";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK closemain()  ;
WIDTH 105 HEIGHT 23 ;
FONT "arial" SIZE 9 ;
TOOLTIP "Exit MicroStar Anti-Virus"
@ 84 ,5 FRAME Frame1;
CAPTION "Сканирование" ;
WIDTH 239 ;
HEIGHT 224 ;
FONT "arial" ;
SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} 

@ 85 ,247 FRAME Frame2;
CAPTION "Обновление" ;
WIDTH 237 ;
HEIGHT 223 ;
FONT "arial" ;
SIZE 9 ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0} 

@ 110 ,11 LABEL lbl1 ;
VALUE "Сканирование на вирусы:" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BOLD ;
UNDERLINE ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {255,0,0}
@ 149 ,11 LABEL lbl2 ;
VALUE "Быстрое" ;
WIDTH 111 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 186 ,11 LABEL lbl3 ;
VALUE "Полное" ;
WIDTH 111 ;
HEIGHT 20 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 220 ,11 LABEL lbl4 ;
VALUE "Памяти" ;
WIDTH 84 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 255 ,11 LABEL lbl5 ;
VALUE "Выборочное" ;
WIDTH 84 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 108 ,253 LABEL lbl6 ;
VALUE "Для защититы программа автоматически пытается ежедневно обновлять базы данных вирусов и шпионских программ, когда захотите." ;
WIDTH 227 ;
HEIGHT 108 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 141 ,165 BUTTONEX btn2;
CAPTION "Запустить";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK quickscan()  ;
WIDTH 63 HEIGHT 22 ;
FONT "arial" SIZE 9 ;
TOOLTIP "Quick scan checks the commonly affected areas. This takes less time."
@ 177 ,165 BUTTONEX btn3;
CAPTION "Запустить";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK fullscan()  ;
WIDTH 63 HEIGHT 22 ;
FONT "arial" SIZE 9 ;
TOOLTIP "Full OS Scan checks the whole OS files for threats. Note that this takes some time."
@ 213 ,165 BUTTONEX btn4;
CAPTION "Запустить";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK memoryscan()  ;
WIDTH 62 HEIGHT 22 ;
FONT "arial" SIZE 9 ;
TOOLTIP "Memory scan scans the files and modules that are currently loaded in to the memory. "
@ 249 ,165 BUTTONEX btn5;
CAPTION "Запустить";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK selectivescan()  ;
WIDTH 62 HEIGHT 22 ;
FONT "arial" SIZE 9 ;
TOOLTIP "Selective scan checks files and folders you select."
@ 218 ,315 BUTTONEX btn6;
CAPTION "Обновить";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK updater()  ;
WIDTH 110 HEIGHT 24 ;
FONT "arial" SIZE 9 ;
TOOLTIP "Download and install latest virus profiles."
END WINDOW

ACTIVATE WINDOW win1
EndIF

procedure closemain()
win1.Release ( )
return
procedure quickscan()
Execute File "Qscan.exe"
return
procedure fullscan()
Execute File "Fscan.exe"
return
procedure memoryscan()
Execute File "MMscan.exe"
return
Proc selectivescan
if !iswindowdefined( win2 )
DEFINE WINDOW win2 ;
AT 10 ,10 ;
WIDTH 375 ;
HEIGHT 139 ;
ICON "img\icon.ico" ;
TITLE "MicroStar Anti-Virus : Selective Scan" ;
MODAL ;
NOSIZE ;
BACKCOLOR {236,233,216} 

win2.Center ( )
@ 10 ,10 LABEL lbl7 ;
VALUE "Custom scan checks only the location and files that you select." ;
WIDTH 351 ;
HEIGHT 23 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 50 ,24 BUTTONEX btn7;
CAPTION "Scan folder\drive";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pressscanfolder()  ;
WIDTH 105 HEIGHT 22 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
@ 50 ,240 BUTTONEX btn8;
CAPTION "Scan file";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK pressscanfile()  ;
WIDTH 103 HEIGHT 22 ;
FONT "Arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win2
EndIF

Return Nil
procedure pressscanfolder()
Execute File "Sscan1.exe"
return
procedure pressscanfile()
Execute File "Sscan2.exe"
return
procedure updater()
if !iswindowdefined( win3 )
DEFINE WINDOW win3 ;
AT 10 ,10 ;
WIDTH 367 ;
HEIGHT 243 ;
ICON "img\icon.ico" ;
TITLE "Open CWS AV" ;
MODAL ;
BACKCOLOR {236,233,216} 

win3.Center ( )
@ 10 ,8 LABEL lbl8 ;
VALUE "Определения вирусов - это файлы, которые используются для идентификации вирусов." ;
WIDTH 336 ;
HEIGHT 61 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 65 ,9 LABEL lbl9 ;
VALUE "Эти определения обновляются автоматически, но вы можете нажать «Обновить»." ;
WIDTH 335 ;
HEIGHT 62 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0}
@ 141 ,127 BUTTONEX btn9;
CAPTION "Обновить";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK clickupdate()  ;
WIDTH 103 HEIGHT 22 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
END WINDOW

ACTIVATE WINDOW win3
EndIF

return
procedure clickupdate()
Execute File "ODupd.exe"
return
Proc about
if !iswindowdefined( win4 )
DEFINE WINDOW win4 ;
AT 10 ,10 ;
WIDTH 583 ;
HEIGHT 399 ;
ICON "img\icon.ico" ;
TITLE "Open CWS Anti-virus : О программе" ;
MODAL ;
BACKCOLOR {192,192,192} 

win4.Center ( )
@ 10 ,7 LABEL lbl10 ;
VALUE "Open CWS Anti-virus" ;
WIDTH 204 ;
HEIGHT 31 ;
FONT "Arial" SIZE 16  ;
BOLD ;
BACKCOLOR {192,192,192} ;
BORDER ;
FONTCOLOR {255,0,0}
@ 46 ,7 LABEL lbl11 ;
VALUE "Версия 1.0" ;
WIDTH 200 ;
HEIGHT 20 ;
FONT "Arial" SIZE 10  ;
BOLD ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 109 ,7 EDITBOX edit1;
ON GOTFOCUS print()  ;
WIDTH 552 ;
HEIGHT 144;
READONLY ;
FONT "Arial" SIZE 9 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 261 ,7 LABEL lbl12 ;
VALUE "КонтинентСвободы.рф" ;
WIDTH 355 ;
HEIGHT 21 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 280 ,7 LABEL lbl13 ;
VALUE "Open CWS Anti-virus использует движок ClamAV." ;
WIDTH 461 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 298 ,7 LABEL lbl14 ;
VALUE "" ;
WIDTH 493 ;
HEIGHT 18 ;
FONT "Arial" SIZE 9  ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
@ 17,233 HYPERLINK Hyper1;
VALUE "КонтинентСвободы.рф" ;
ADDRESS "https://КонтинентСвободы.рф";
WIDTH 187 ;
HEIGHT 25 ;
FONT "Arial" ;
SIZE 9 ;
TOOLTIP "Открыть официальный сайт" ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,255} 

@ 327 ,455 BUTTONEX btn10;
CAPTION "Ок";
FONTCOLOR {0,0,0};
BACKCOLOR {236,233,216};
ON CLICK closeabout()  ;
WIDTH 103 HEIGHT 21 ;
FONT "arial" SIZE 9 ;
TOOLTIP ""
@ 68 ,7 LABEL lbl15 ;
VALUE "Если Вам нравится программа, расскажите о ней в интернете." ;
WIDTH 551 ;
HEIGHT 36 ;
FONT "Arial" SIZE 9  ;
ITALIC ;
BACKCOLOR {192,192,192} ;
FONTCOLOR {0,0,0}
END WINDOW

ACTIVATE WINDOW win4
EndIF

Return Nil
procedure print()
if .not. empty(win4.Edit1.VALUE)
win4.Edit1.VALUE := win4.Edit1.VALUE + CHR(13) + CHR(10) + "Сделано на базе MicroStar Anti-Virus v0.6.3.1"
else
win4.Edit1.VALUE := "Сделано на базе MicroStar Anti-Virus v0.6.3.1"
endif
return
procedure closeabout()
win4.Release ( )
return
Proc submitsample
Execute File "Submit Malware Sample.url"
Return Nil
Proc visithomepage
Execute File "КонтинентСвободы.рф"
Return Nil
Proc contactus
Execute File "Contact us.url"
Return Nil
Proc openquarantine
Execute File "quarantine.exe"
Return Nil


End Of Resistance

INIT PROCEDURE Init_main
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : 'Open CWS Anti-virus'",1,5)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",6,12)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Center( )",13,13)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Image ( image1 ) , Image : 'img\title.png'",14,15)
SS_ESASTEP("Circuits\Main\Main\Main","Image Properties",16,17)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",18,18)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Файл'",19,19)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Запустить быстрое сканирование системы' )",20,20)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Запустить полное сканирование' )",21,21)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Запустить сканирование памяти' )",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Запустить выборочное сканирование' )      SEPARATOR",23,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Закрыть' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Инструменты'",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Загрузка антивирусных сигнатур' )",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Открыть карантин' )",29,29)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'Отправить подозрительный файл' )",30,30)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",31,31)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP 'Помощь'",32,32)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'О программе' )",33,33)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",34,34)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",35,35)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn1 ) , Caption : 'Закрыть'",36,39)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closemain",40,40)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",41,43)
SS_ESASTEP("Circuits\Main\Main\Main","Define Frame ( Frame1 )",44,52)
SS_ESASTEP("Circuits\Main\Main\Main","Define Frame ( Frame2 )",53,61)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl1 ) , Caption : 'Сканирование на вирусы:'",62,63)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",64,70)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl2 ) , Caption : 'Быстрое'",71,72)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",73,77)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl3 ) , Caption : 'Полное'",78,79)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",80,84)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl4 ) , Caption : 'Памяти'",85,86)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",87,91)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl5 ) , Caption : 'Выборочное'",92,93)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",94,98)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl6 ) , Caption : 'Для защититы программа автоматически пытается ежедневно обновлять базы данных вирусов и шпионских программ, когда захотите.'",99,100)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",101,105)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn2 ) , Caption : 'Запустить'",106,109)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action quickscan",110,110)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",111,113)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn3 ) , Caption : 'Запустить'",114,117)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action fullscan",118,118)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",119,121)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn4 ) , Caption : 'Запустить'",122,125)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action memoryscan",126,126)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",127,129)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn5 ) , Caption : 'Запустить'",130,133)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action selectivescan",134,134)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",135,137)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn6 ) , Caption : 'Обновить'",138,141)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action updater",142,142)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",143,145)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",146,147)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",148,150)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closemain ( Event : CLICK )",151,151)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release( )",152,152)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",153,153)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure quickscan ( Event : CLICK )",154,154)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Qscan.exe'",155,155)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",156,156)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure fullscan ( Event : CLICK )",157,157)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Fscan.exe'",158,158)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",159,159)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure memoryscan ( Event : CLICK )",160,160)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'MMscan.exe'",161,161)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",162,162)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure selectivescan",163,163)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win2 ) , Title : 'MicroStar Anti-Virus : Selective Scan'",164,168)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",169,174)
SS_ESASTEP("Circuits\Main\Main\Main","win2.Center( )",175,175)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl7 ) , Caption : 'Custom scan checks only the location and files that you select.'",176,177)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",178,182)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn7 ) , Caption : 'Scan folder\drive'",183,186)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pressscanfolder",187,187)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",188,190)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn8 ) , Caption : 'Scan file'",191,194)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action pressscanfile",195,195)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",196,198)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",199,200)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",201,203)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",204,204)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pressscanfolder ( Event : CLICK )",205,205)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Sscan1.exe'",206,206)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",207,207)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure pressscanfile ( Event : CLICK )",208,208)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Sscan2.exe'",209,209)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",210,210)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure updater ( Event : CLICK )",211,211)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win3 ) , Title : 'Open CWS AV'",212,216)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",217,221)
SS_ESASTEP("Circuits\Main\Main\Main","win3.Center( )",222,222)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl8 ) , Caption : 'Определения вирусов - это файлы, которые используются для идентификации вирусов.'",223,224)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",225,229)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl9 ) , Caption : 'Эти определения обновляются автоматически, но вы можете нажать «Обновить».'",230,231)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",232,236)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn9 ) , Caption : 'Обновить'",237,240)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action clickupdate",241,241)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",242,244)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",245,246)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",247,249)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",250,250)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure clickupdate ( Event : CLICK )",251,251)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'ODupd.exe'",252,252)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",253,253)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure about",254,254)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win4 ) , Title : 'Open CWS Anti-virus : О программе'",255,259)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",260,264)
SS_ESASTEP("Circuits\Main\Main\Main","win4.Center( )",265,265)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl10 ) , Caption : 'Open CWS Anti-virus'",266,267)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",268,274)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl11 ) , Caption : 'Версия 1.0'",275,276)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",277,282)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Editbox ( edit1 )",283,283)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON GOTFOCUS : Action print",284,284)
SS_ESASTEP("Circuits\Main\Main\Main","Editbox Properties",285,290)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl12 ) , Caption : 'КонтинентСвободы.рф'",291,292)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",293,297)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl13 ) , Caption : 'Open CWS Anti-virus использует движок ClamAV.'",298,299)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",300,304)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl14 ) , Caption : ''",305,306)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",307,311)
SS_ESASTEP("Circuits\Main\Main\Main","Define HyperLink ( Hyper1 )",312,322)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Button ( btn10 ) , Caption : 'Ок'",323,326)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON CLICK : Action closeabout",327,327)
SS_ESASTEP("Circuits\Main\Main\Main","Button Properties",328,330)
SS_ESASTEP("Circuits\Main\Main\Main","Define Label ( lbl15 ) , Caption : 'Если Вам нравится программа, расскажите о ней в интернете.'",331,332)
SS_ESASTEP("Circuits\Main\Main\Main","Label Properties",333,338)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",339,340)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",341,343)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",344,344)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure print - Event : GOTFOCUS",345,345)
SS_ESASTEP("Circuits\Main\Main\Main","Print text ('Сделано на базе MicroStar Anti-Virus v0.6.3.1') to Editbox (Edit1) of Window (win4)",346,350)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",351,351)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closeabout ( Event : CLICK )",352,352)
SS_ESASTEP("Circuits\Main\Main\Main","win4.Release( )",353,353)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",354,354)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure submitsample",355,355)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Submit Malware Sample.url'",356,356)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",357,357)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure visithomepage",358,358)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'КонтинентСвободы.рф'",359,359)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",360,360)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure contactus",361,361)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'Contact us.url'",362,362)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",363,363)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure openquarantine",364,364)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'quarantine.exe'",365,365)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",366,366)
Return
*-------------------------------------------------------------------*
