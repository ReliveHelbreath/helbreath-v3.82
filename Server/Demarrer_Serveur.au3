;	V2.64 to V3.0.100 (Version 1.0.6)
;	Converted with AutoItV2toV3 [Version 1.0.6]
;	(C) Copyright 2004 J-Paul Mesnage.

; Prologue		; should be renamed (?) and called somewhere if you are converting  an include file
__init()
; End Prologue
TrayTip ( "Equilibrium Project", "Ce script sert � d�marrer de fa�on automatique le serveur.Ne toucher � rien pendant son ex�cution!", 20 , 1 )
MsgBox(0, "Equilibrium Project", "D�marrer le serveur Equilibrium Project.",0x40000)
ProgressOn("Equilibrium Project", "D�marage automatis� du serveur", "D�but",-1,-1,16)
Sleep ( 1000 )
Run ( 'D:\EP_Server\Gate\GateServer[by_Sobame].exe', 'D:\EP_Server\Gate\' )
ProgressSet(5 , "D�marage du Gate server", "D�marage d'Equilibrium Project")
Sleep ( 2000 )
WinShow ( 'Helbreath GateServer 2002-6-20', '', @SW_MINIMIZE )
Sleep ( 1000 )




; Main
Run ( 'D:\EP_Server\Core\MainLServer 496.exe', 'D:\EP_Server\Core\' )
ProgressSet(10 , "D�marage du Main server", "D�marage d'Equilibrium Project")
Sleep ( 3000 )
WinActivate ( 'HB Main-Log-Server v3.51 Extasis fix (Snoopy81)' )
Send ( '{HOME}' )
ProgressSet(15 , "Activation du Main server", "D�marage d'Equilibrium Project")
Sleep ( 2000 )
WinShow ( 'HB Main-Log-Server v3.51 Extasis fix (Snoopy81)', '', @SW_MINIMIZE )
Sleep ( 1000 )


; World
Run ( 'D:\EP_Server\Core\WorldLServer Extasis.exe', 'D:\EP_Server\Core\' )
ProgressSet(20 , "D�marage du World server", "D�marage d'Equilibrium Project")
Sleep ( 8000 )
WinActivate ( 'Helbreath World-Log-Server V2.15' )
Send ( '{HOME}' )
ProgressSet(35 , "Activation du World server", "D�marage d'Equilibrium Project")
Sleep ( 2000 )
WinShow ( 'Helbreath World-Log-Server V2.15', '', @SW_MINIMIZE )
Sleep ( 1000 )


;Exit(0)




Run ( 'D:\EP_Server\GameServers\0_equi\HGserver.exe', 'D:\EP_Server\GameServers\0_equi\' )
ProgressSet(40 , "D�marage des Game  servers", "D�marage d'Equilibrium Project")
Sleep ( 8000 )

Run ( 'D:\EP_Server\GameServers\1_aresden\HGserver.exe', 'D:\EP_Server\GameServers\\1_aresden' )
ProgressSet(55 , "D�marage des Game  servers", "D�marage d'Equilibrium Project")
Sleep ( 8000 )

Run ( 'D:\EP_Server\GameServers\2_elvine\HGserver.exe', 'D:\EP_Server\GameServers\\2_elvine' )
ProgressSet(70 , "D�marage des Game  servers", "D�marage d'Equilibrium Project")
Sleep ( 8000 )

Run ( 'D:\EP_Server\GameServers\3_hunting\HGserver.exe', 'D:\EP_Server\GameServers\\3_hunting' )
ProgressSet(85 , "D�marage des Game  servers", "D�marage d'Equilibrium Project")
Sleep ( 8000 )

Run ( 'D:\EP_Server\GameServers\4_ml\HGserver.exe', 'D:\EP_Server\GameServers\\4_ml' )
ProgressSet(100 , "D�marage des Game  servers", "D�marage d'Equilibrium Project")
Sleep ( 3000 )

ProgressOff()

; Epilogue	Extra Functions needed for Compatibility execution
; 			take care of possible redefinition if you are converting  an include file
;
func __init ()		; to define global variables needed
endfunc
; End Epilogue
