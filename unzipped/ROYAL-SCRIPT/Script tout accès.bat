::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJG2r33sfFA/3hQgh9WiyB6cb7eX+4f7Jq04SNA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsGAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQICJwJVQEmxP3mzFqF8
::eg0/rx1wNQPfEVWB+kM9LVsJDDatBQs=
::fBEirQZwNQPfEVWB+kM9LVsJDDehDkKKMtU=
::cRolqwZ3JBvQF1fEqQIAOhRTXgWPMW76AvId/fz04uuTq14cQO02ds/Y1bot5/VT+krxZ9Ya33Rel9wfTAtZbFKYSz0d6VpjkVaqd/Wzim8=
::dhA7uBVwLU+EWHeF/VA/KhIUeg2RNWS0Zg==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDRnYCu+GG6pDaET+NTJwNOmjgAud9AWSLvn6LuXIexe2Ub2fIY5mH9Cnas=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983

@echo off
mode con cols=65 lines=32
setlocal enabledelayedexpansion
color 0a
title PROGRAMME D'AUTOMATISATION by SERI TAGRO ROY

:start1
echo NB : Rassurez vous d'avoir execute le programme en mode super utilisateur pour son bon fonctionnement
echo en faisant un clique droit sur le programme a executer puis en cliquant sur "Executer en tant qu'Administrateur"
echo.
echo.
echo.
pause
cls
color a
echo.                                                                                    
echo.
echo.
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @                              BIENVENUE SUR ROYAL-SCRIPT                               @
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @.......................................................................................@
echo                                    .                                                                                       .
echo                                    .                                                                                       . 
echo                                    .                                                                                       .
echo                                    .                                 1) SE CONNECTER                                       .
echo                                    .                                                                                       .       			              		          
echo                                    .                                 2) CREER UN COMPTE                                    .
echo                                    .                                                                                       .                                                                                           	 	          	      
echo                                    .                                 3) FERMER LE PROGRAMME                                .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .........................................................................................
echo.
echo.
echo.

set /p loginx1=">>>>>> ":
if %loginx1% == 3 goto sortie003
if not %loginx1% leq 2 goto start1
if %loginx1% equ 1 goto login
cls
echo Veuillez saisir un nom d'utilisateur
set /p username1=">>> "
set v1f=0

:findspaces
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" equ " " (
echo.
echo.
echo Desole, aucun espace n'est autorise dans votre nom d'utilisateur...
pause >nul
goto start1
)
if NOT "!Letter%v1f%!" equ "" (
set /a v1f=%v1f%+1
goto findspaces
)
echo Veuillez saisir un mot de passe:
set /p password1=">>> "
cls
echo Votre compte a ete cree avec succes. Veuillez vous connecter pour continuer.
pause>nul

goto save

:login
cls
set /p name1=Nom d'utilisateur:
if not exist "%name1%.bat" (
echo Nom D'utilisateur Invalide...
pause >nul
goto start1
)
set /p pass1=Mot De Passe:
call %name1%.bat
if not %password1% equ %pass1% (
echo Mot de passe invalide
pause >nul
goto start1
)
goto menu

:save
(
echo set username1=%username1%
echo set password1=%password1%
)>%username1%.bat
goto start1

:sortie003
exit




:menu
cls
echo Connexion reussie!
pause >nul
color a
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             ---- Les informations de connexions saisies sont correct.
echo.
echo                             ---- Vous disposez maintenant des avantages du Script de NAIROBI-VISION FOREVER.
echo.
echo.
timeout /t 20
cls
goto interface2






:interface2
cls
color a
title Royal-Script by SERI TAGRO ROY

                   																				                   
echo.     
echo _______________________________________________________________________________________________________________________________________  
echo.
echo      OPTION DU SYSTEME :			       LA CYBERSECURITE :			      RESEAUX et Autres:			          
echo _______________________________________________________________________________________________________________________________________
echo.
echo    a) Mettre a jour la date                            h) Hacker Wifi                               n) IP de la machine
echo.                                                          
echo    b) Metrre a jour l'heure                            i) Reparer disk de stockage                  o) Ping
echo.                                                           
echo    c) Maintenance du systeme                           j) Prevision Meteorologique                  p) Paramettre  Reseau
echo.                   
echo    d) Mettre le PC a jour                              k) Activer Windows et M. Office              q)
echo.                                   
echo    e) Eteindre l'Ordinateur                            l) Systeme info                              r) 
echo.                                                      
echo    f) Redemarer l'Ordinateur                           m) Interface Hacker                          s) 
echo.
echo.   g) Voir la version du systeme                       
echo.
echo.
echo.
echo    0) Verrouiller                                      00) Sortir                                    01) Suivant
echo.
echo.
echo ____________________



set choix=
set /p choix=">>>> " : 
echo.
echo.
echo.
echo.
echo.

if %choix%==a  goto choixa
if %choix%==b  goto choixb
if %choix%==c  goto choixc
if %choix%==d  goto choixd
if %choix%==e  goto choixe
if %choix%==f  goto choixf
if %choix%==g  goto choixg
if %choix%==h  goto choixh
if %choix%==i  goto choixi
if %choix%==j  goto choixj
if %choix%==k  goto choixk
if %choix%==l  goto interfacechoix
if %choix%==m  goto choixm
if %choix%==n  goto choixn
if %choix%==o  goto choixo
if %choix%==p  goto choixp
if %choix%==r  goto choixr
if %choix%==s  goto chois
if %choix%==1  goto choix1
if %choix%==2  goto choix2
if %choix%==00 goto sortie
if %choix%==01 goto suivant
if %choix%==0  goto connexion



:sortie
cls
echo Merci de nous avoir fait confiance, nous fermons le script dans 10 secondes ......
timeout /t 10
exit


:suivant
cls
goto interface3





:choixa
cls
date
cls
echo La date de votre Ordinateur a ete mis a jour avec succes.
echo.
pause	
cls
goto interface2


:choixb
cls
time
cls
echo L'heure de votre Ordinateur a ete mis a jour avec succes.
echo.
pause	
cls
goto interface2




:choixc
color d
cls
echo.
echo Nous Commencons La Maintenance De Votre Systeme Dans 20 secondes Connectez. 
echo Connectez votre ordinateur a un wifi ou a internet afin que certaines mises a jour puisse etre installe
echo Sachez que ce processus peut durer plusieurs minutes!
timeout /t 20
echo.
echo.
echo.
cls
dir /s
dir /a
cls
color d
echo Attention, la maintenance de votre systeme est en cours veuillez patienter...
timeout /t 15
cls
color d
echo La Maintenance de votre systeme est en cours de traitement, Veuillez patientez s'il vous plait !...
echo.
echo.
echo.
winget upgrade
cls
color d
echo Nous installons certains programme python, Veuillez patientez s'il vous plait !...
pip install yt-dlp
winget install yt-dlp
y-dlp -U
pip yt-dlp -U
cls
color d
echo La Maintenance de votre systeme est en cours de traitement, Veuillez patientez s'il vous plait !...
echo.
echo.
winget upgrade --all
color d
cls
echo.
echo Nous lancons le processus de reparation de votre carte reseau,Veuillez patienter quelques instants...
echo.
timeout /t 15
echo.
echo.
netsh winsock reset
cls
color d
echo Nous lancons le processus de reparation de votre carte reseau,Veuillez patienter quelques instants...
echo.
echo.
netsh int ip reset
echo.
echo.
cls
color d
echo Nous lancons le processus de reparation de votre carte reseau,Veuillez patienter quelques instants...
echo.
echo.
ipconfig /release
cls
color d
echo Nous lancons le processus de reparation de votre carte reseau,Veuillez patienter quelques instants...
echo.
echo.
ipconfig /renew
cls
color d 
echo.
echo.
echo Nous lancons le processus de reparation de votre carte reseau,Veuillez patienter quelques instants...
ipconfig /flushdns
cls
color d
echo Nous scannons votre systeme afin de trouver des secteurs defectueux et les resourdre...
timeout /t 15
echo.
echo.
sfc /scannow
cls
color d
echo Nous scannons votre systeme afin de trouver des secteurs defectueux et les resourdre...
echo.
echo.
chkdsk 
cls
color d
echo Nous scannons votre systeme afin de trouver des secteurs defectueux et les resourdre...
echo.
echo.
DISM /Online /Cleanup-image /Scanhealth
cls
color d
echo Nous scannons votre systeme afin de trouver des secteurs defectueux et les resourdre...
echo.
echo.
DISM /Online /Cleanup-image /Checkhelth
cls
color d
echo.
echo.
DISM /Online /Cleanup-image /Restorehealth

DISM /Online /Cleanup-image /AnalyzeComponentStore

echo Nous scannons votre systeme afin de trouver des secteurs defectueux et les resourdre...Nous allons redemarer votre appareil juste apres.

DISM /Online /Cleanup-image /spsuperseded
cls
netsh int tcp set global autotuninglevel=normal
cls
echo Nous procedons au redemarrage de votre ordinateur dans 10 secondes...
timeout /t 10
shutdown -r -t 0






:choixd 
cls
echo La mise a jour de votre systeme commence dans 20 secondes...
timeout /t 20
cls
color b
echo Nous faisons la mise a jour de votre systeme. Veuillez patienter quelques instants...
echo.
echo.
winget upgrade
cls
color b
echo Nous faisons la mise a jour de votre systeme. Veuillez patienter quelques instants...
echo.
echo.
winget upgrade --all
cls
color b
echo VOTRE ORDINATEUR A ETE MIS A JOUR AVEC SUCCES. MERCI DE NOUS FAIRE CONFIANCE.
echo.
echo.
cls
netsh int tcp set global autotuninglevel=normal
pause
cls
goto interface2




:choixe 
cls
2shutdown -s -t 10






:choixf
cls
shutdown -r -t 10


:choixg
cls
echo.
timeout /t 7
echo La version de votre systeme est : 
echo.
echo.
ver
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p menuprincipal= Appuyez sur une touche pour revenir au menu principal...
cls
goto interface2




:choixh 
cls
color a
echo Attention, Nous Allons Pirater Les Reseaux Wifi Auquels Vous vous Etes Deja Connectes Une Fois...
timeout /t 20
netsh wlan show profiles
echo.
echo.
echo.
set /p coller=Copiez le nom du wifi dans le presse papier puis appuyez sur une touche pour continuer...
cls
echo.
echo.
echo.
echo.
set /p wifi= Veuillez saisir ou coller le nom du wifi que vous avez copier dans le presse papier :
dir /s
cls
netsh wlan show profiles "%wifi%" key=clear
echo.
echo.
echo.
pause
cls
goto interface2


:choixi 
cls
color a
echo.                                                                                    
echo.
echo.
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @                              REPARATION DU DISQUE DE STOCKAGE                         @
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @.......................................................................................@
echo                                    .                                                                                       .
echo                                    .                                                                                       . 
echo                                    .                                                                                       .
echo                                    .   E1) REPARATION DE DISQUE DUR INTERNE         E2) REPARATION DE DISQUE DUR EXTERNE   .     
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                      .
echo                                    .   E3) REPARATION DE CLE USB                    E4) REPARATION DE CARTE MEMOIRE        .
echo                                    .                                                                                       .
echo                                    .                                                                                       . 
echo                                   .    E5) PARTITION                                                                      .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                           007) RETOUR AU MENU PRINCIPAL                               .
echo                                    .                                                                                       .
echo                                    .........................................................................................
echo.
echo.
echo.
echo.
echo.
echo. 
set /p choix= ">>>>>>>> ":



if %choix%==8E1 goto E1
if %choix%==E2 goto E2
if %choix%==E3 goto E3
if %choix%==E4 goto E4
if %choix%==E5 goto E5
if %choix%==007 goto 007

:E1
cls
color a
echo.
echo                                                                 REPARATION DU DISQUE DE STOCHAGE
echo.
echo.
echo.
echo.
echo                    .........................SERI...........TAGRO...............ROY.......................................
echo                    .                                                                                                    .
echo                    .                                                                                                    .
echo                    .                                                                                                    .
echo                    .        @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @       .
echo                    .        @                                                                                   @       .     
echo                    .        @                                                                                   @       .
echo                    .        @                             Q) REPARER LE DISQUE DUR                              @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @                             Q1) FORMATER LE DISQUE DUR                            @       .
echo                    .        @                                                                                   @       . 
echo                    .        @                                                                                   @       .
echo                    .        @                             Q2) FORCER LE FORMATAGE DU DISQUE DUR                 @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @               07) RETOUR AU MENU PRINCIPAL           08) PRECEDENT                @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @       .
echo                    .                                                                                                    .
echo                    .                                                                                                    .
echo                    .                                                                                                    .   
echo                    .                                                                                                    .
echo                    .......................SERI...................TAGRO................ROY................................
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p choix= ">>>>>> ":

if %choix%==07 goto 007
if %choix%==08 goto P08
if %choix%==Q goto Q
if %choix%==Q1 goto Q1
if %choix%==Q2 goto Q2





:E2
cls
powershell -command "Get-Partition"
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.2
set /p lettredisk= Entrez la lettre du disk a Reparer (Exemple: C ) :  
cls 
color a
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 1/8
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /f
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 2/8
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /v
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 3/8 
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /b
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 4/8
echo.
echo.
echo.
echo.
echo.
echo.2
chkdsk %lettredisk%: /scan
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 5/8
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /r
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 6/8
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /i
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 7/8
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /c
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 8/8
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /f /r /x
cls 2
echo Nous venons d'effectuer la reparation de votre disk %lettredisk%
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto choixi




:E3
cls 
color a
set /p disk= Veuillez saisir la lettre du disk de stockage (Exemple: E) :
chkdsk %disk%: /F 
pause
cls
goto E1




:E4
cls 
color a
set /p disk= Veuillez saisir la lettre du disk de stockage (Exemple: E) :
chkdsk %disk%: /F 
pause
cls
goto interface2


:E5
cls 
echo                    .........................SERI...........TAGRO...............ROY.......................................
echo                    .                                                                                                    .
echo                    .        @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @       .
echo                    .        @                                                                                   @       .     
echo                    .        @                                                                                   @       .
echo                    .        @    V1) AFFICHER LA LISTE DES DISQUE DUR ET DISQUE AMOVIBLES                       @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @    V2) AFFICHER LA LISTE DES PARTITIONS SUR UN DISQUE SPECIFIQUE                  @       .
echo                    .        @                                                                                   @       . 
echo                    .        @                                                                                   @       .
echo                    .        @    V3) CREER UNE NOUVELLE PARTITION SUR UN DISQUE DUR                             @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @    V4) FORMATER UNE PARTITION                                                     @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @    V5) REDIMENSIONNER UNE PARTITION                                               @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                                                   @       .
echo                    .        @                                                      08) PRECEDENT                @       .
echo                    .        @                                                                                   @       .
echo                    .        @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @       .
echo                    .                                                                                                    .   
echo                    .......................SERI...................TAGRO................ROY................................
echo.

set /p choixV= Entrez votre choix :

if %choixV% == V1 goto choixV1
if %choixV% == V2 goto choixV2
if %choixV% == V3 goto choixV3
if %choixV% == V4 goto choixV4
if %choixV% == V5 goto choixV5
if %choixV% == 08 goto 08



:choixV1
cls
color A
powershell -command "Get-Disk" 
pause>nul
goto E5



:choixV2
cls
color a 
powershell -command "Get-Partition"
echo.
echo.
echo.
echo.
set /p choix= Saisissez le numero du disque : 



:choixV3
cls
color A
powershell -command "Get-Disk" 
echo.
echo.
echo.
powershell -command "New-Partition"
pause 




:007
cls 
goto interface2




:P08
cls
goto choixi


:Q
cls 
color a
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 1/9
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /f
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 2/9
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /v
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 3/9 
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /b
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 4/9
echo.
echo.
echo.8
echo.
echo.
echo.
chkdsk %lettredisk%: /scan
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 5/9
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /r
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 6/9
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /i
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 7/9
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /c
cls
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 8/9
echo.
echo.
echo.
echo.
echo.
echo.
chkdsk %lettredisk%: /f /r /x
cls 
echo Nous lancons la reparation de votre disk Veuillez patientez...Nous sommes a l'etape 8/9
echo.8
echo.
echo.
echo.
echo.
echo.
powershell -command "Repair-Volume -DriveLetter C -OfflineScanAndFix"
cls
echo Nous venons d'effectuer la reparation de votre disk %lettredisk%
echo.
echo.
echo.
echo.
pause
cls
goto E1


:Q1
cls
color a
echo.
echo                                                                                       REPARATION DU DISQUE DE STOCKAGE
echo.
echo.
echo.
echo                                                         ........................SERI...........TAGRO...............ROY...............................
echo                                                         .                                                                                           .
echo                                                         .   @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @   .
echo                                                         .   @                                                                                   @   .     
echo                                                         .   @    M) ETAPE 1                                                                     @   .
echo                                                         .   @                                                                                   @   .
echo                                                         .   @                                                     07) RETOUR AU MENU PRINCIPAL  @   .
echo                                                         .   @    M1) ETAPE 2                                                                    @   .
echo                                                         .   @                                                                                   @   .
echo                                                         .   @                                                                                   @   . 
echo                                                         .   @    M2) ETAPE 3                                               05) PRECEDENT        @   .
echo                                                         .   @                                                                                   @   .
echo                                                         .   @                                                                                   @   .
echo                                                         .   @    M3) ETAPE 4                                                                    @   .
echo                                                         .   @                                                                                   @   .
echo                                                         .   @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @   .
echo                                                         .                                                                                           .
echo                                                         .......................SERI...................TAGRO................ROY.......................
echo.
echo.
echo.
echo.
set /p choix= ">>>>>>> ":

if %choix%==07 goto 007
if %choix%==05 goto 05
if %choix%==Q1 goto E1
if %choix%==M  goto etape1
if %choix%==M1 goto etape2
if %choix%==M2 goto etape3
if %choix%==M3 goto etape4


:etape1
diskpart







:etape2





:etape3




:etape4






:05
cls
goto E1








:choixj
cls
set /p ville= Veuillez saisir le nom de la ville dont vous souhaitez obtenir les donnees Meteorologique (Exemple: Abidjan):
cls
echo Attention, Nous accedons aux donnees meteorologique rassurez-vous que votre connexioninternet est bien active, veuillez patienter quelques secondes...
timeout /t 10
cls
curl wttr.in/%ville%
echo.
echo.
echo.
echo.
pause
cls
goto interface2



:44447
cls
systeminfo
echo.
echo.
echo.
echo.
pause
cls
goto interface2



:choixk
cls
color a
echo Rassurer vous d'activer votre connexion internet avant de continuer le cas contraire, vous aurez un message d'erreur.
pause
cls
powershell -command "irm https://get.activated.win | iex"
goto interface2




:choixp
cls
color a
echo.                                                                                    
echo.
echo.
echo                                   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                                   @                                                                                       @
echo                                   @                                                                                       @
echo                                   @                         REPARATION DE LA CARTE RESEAU                                 @
echo                                   @                                                                                       @
echo                                   @                                                                                       @
echo                    . . . . . .  . @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@...........
echo                    .                                                                                                                 .
echo                    .                                                                                                                 . 
echo                    .                                                                                                                 .
echo                    .  A1) AFFICHER LES PARAMETTRES DE L'ADDRESSE IP                        A2) AFFICHER LES DETAILS DE L'IP          .     
echo                    .                                                                                                                 .
echo                    .  A3) AFFICHER LES PARAMETTRES DE L'INTERFACE RESEAU                   A4) ACTIVER UNE INTERFACE                 .
echo                    .                                                                                                                 .
echo                    .  A5) DESACTIVER UNE INTERFACE                                         A6) TESTER LA CONNECTIVITE                .
echo                    .                                                                                                                 .
echo                    .  A7) TESTER LES CONNECTIONS EXISTANTES SUR LE RESEAUX                 A8) VERIFIER LE STATUT DU CLIENT DNS      . 
echo                    .                                                                                                                 .
echo                    .  A9) AFFICHER LES SERVEUR DNS CONFIGURE                               A10) VIDER LE CACHE DNS                   .
echo                    .                                                                                                                 .
echo                    .  A12) REDEMARRER UN SERVICE RESEAU                                    A11) VERIFIER L'ETAT DU SERVICE RESEAU    .
echo                    .                                                                                                                 .
echo                    .  A13) REPARER LA CARTE RESEAU                                                                                   .
echo                    .                                                                                                                 .
echo                    .                                   007) RETOUR AU MENU PRINCIPAL                                                 .
echo                    .                                                                                                                 . 
echo                    ...................................................................................................................
echo.
echo.
echo.
echo.
echo.
echo. 
set /p choix= ">>>>>>> ":


if %choix%== A1 goto A1
if %choix%== A2 goto A2
if %choix%== A3 goto A3
if %choix%== A4 goto A4
if %choix%== A5 goto A5
if %choix%== A6 goto A6
if %choix%== A7 goto A7
if %choix%== A8 goto A8
if %choix%== A9 goto A9
if %choix%== A10 goto A10
if %choix%== A11 goto A11
if %choix%== A12 goto A12
if %choix%== A13 goto A13

:A1
cls
powershell -command "Get-NetIPAddress"
pause>nul
goto choixp


:A2
cls
powershell -command "Get-NetIPConfiguration"
pause>nul
goto choixp
2
:A3
cls
powershell -command "Get-NetAdapter"
pause>nul
goto choixp


:A4
cls
powershell -command "Enable-NetAdapter"
pause>nul
goto choixp



:A5




:A6
cls 
echo.
echo Veuillez saisir le site ou l'addresse IP a scanner... (Exemple: www.google.com ou 192.168.1.25) puis double clique pour confirmer.
powershell -command "Test-Connection"
pause>nul
goto choixp

:A7
cls
powershell -command "Get-NetTCPConnection "
pause>nul
goto choixp


:A8
cls
powershell -command "Get-DnsClient"
pause>nul
goto choixp

:A9
cls 
powershell -command "Get-DnsClientServerAddress"
pause>nul
goto choixp


:A10
cls
powershell -command "Get-DnsClientCache"
powershell -command "Clear-DnsClientCache"
pause>nul
goto choixp

:A11
cls
powershell -command "Get-Service"
pause>nul
goto choixp

:A12
cls
echo.
echo Saisissez le nom du service reseau a redemarrer (Exemple: DHCP,ETC... )
powershell -command "Restart-Service -Name Dhcp"
pause>nul
goto choixp 


:A13
cls
echo.
echo Nous lancons le processus de reparation de votre carte reseau,Veuillez patienter quelques instants. Afin d'appliquer les mises a jour, nous allons proceder au redemarage de l'appareil juste apres!!!
timeout /t 20
cls
netsh winsock reset
cls
netsh int ip reset
cls
ipconfig /release
cls
ipconfig /renew
cls 
ipconfig /flushdns
cls
netsh int tcp set global autotuninglevel=normal
pause
goto interface2
9


:interfacechoix
cls
color c

echo								      FAITES LE CHOIX DE VOTRE INTERFACE GRAPHIQUE
echo.
echo.
echo.
echo.
echo                                  .........................SERI...........TAGRO...............ROY......................................
echo                                  .                                                                                                   .
echo                                  .                                                                                                   .
echo                                  .                                                                                                   .
echo                                  .       @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @       .
echo                                  .       @                                                                                   @       .     
echo                                  .       @                                                                                   @       .
echo                                  .       @                             S) INTERFACE TERMINAL                                 @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                             S1) INTERFACE GRAPHIQUE DE WINDOWS                    @       .
echo                                  .       @                                                                                   @       . 
echo                                  .       @                                                                                   @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                             07) RETOUR AU MENU PRINCIPAL                          @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @                                                                                   @       .
echo                                  .       @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @ @       .
echo                                  .                                                                                                   .
echo                                  .                                                                                                   .
echo                                  .                                                                                                   .   
echo                                  .                                                                                                   .
echo                                  .......................SERI...................TAGRO................ROY...............................
echo.
echo.

set /p choix= Veuillez faire un choix : 

if %choix%==S goto interfaceterminal
if %choix%==S1 goto interfacegraphique
if %choix%==07 goto interface2



:interfaceterminal
cls
color b
systeminfo
pause
cls
goto interfacechoix 

:interfacegraphique
cls
msinfo32
pause
cls
goto interfacechoix



:choixn
cls
set /p addresseip=Veuillez saisir une addresse Web/Ip (Exemple : www.google.com ou 192.162.63.0) :
Ping %addresseip%
pause
cls
goto interface 2



:interface3
cls
color a
title Royal-Script by SERI TAGRO ROY

echo.                     																				                   
echo.     
echo ___________________________________________________________________________________________________________________________________________________
echo                                                         AUTRES:			          
echo ___________________________________________________________________________________________________________________________________________________
echo.
echo.
echo      R) Ouvrir un Terminal                     T) Ouvrir un site web                        P) Precedent                  M) Lancer un logiciel           
echo.
echo      N) Augmenter la puissance du PC           X) Comptes utilisateur                       G) Videos Youtube        
echo.                                                          
echo.         
echo.
echo.                                                       
echo.         
echo.
echo.                                                          
echo.         
echo.
echo. 
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ________________

set /p choix=">>>>> ": 

if %choix%==P goto interface2
if %choix%==R goto choixR
if %choix%==T goto choixT
if %choix%==M goto choixM
if %choix%==N goto choixN
if %choix%==X goto choixX
if %choix%==G goto choixG1

:choixR
cls
start
goto interface3



:ch2oixT
cls
set /p site= Veuillez saisir le nom du site (Exemple: www.youtube.com) :
start %site%
cls
goto interface3


:choixG1
cls
color A

echo NB : Si c'est votre premiere fois d'utiliser cette option veuillez faire une mise a jour rapide du programme pour son bon fonctionnement 
echo en cliquant sur(G1). 
color a
echo.
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @           Telechargez des videos et sons sur YouTube avec notre programme             @
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @.......................................................................................@
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                            G1) Mise a jour du programme                               .
echo                                    .                                                                                       .
echo                                    .                            G2) MP3                                                    .
echo                                    .                                                                                       .
echo                                    .                            G3) MP4                                                    .
echo                                    .                                                                                       .
echo                                    .                            G4) Lister les formats disponible                          .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                     07) RETOUR                                        .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .........................................................................................
echo.
echo.
echo.
set /p options= ">>>>" : 

if %options% == G1 goto G1
if %options% == G2 goto G2
if %options% == G3 goto G3
if %options% == G4 goto G4
if %options% == 07 goto sortie07

:G1
 cls
 color a
 echo Rassurer vous d'etre connecte a internet avant de lancer cette option, le cas contraire, vous aurez un  message d'erreur.
 timeout /t 10
 cls
 echo Veuillez patienter le temps que nous installions quelques dependances ...
 color a
 pip install yt-dlp
 cls
 color a
 echo Veuillez patienter le temps que nous installions quelques dependances ...
 winget install yt-dlp
 cls
 color a
 echo Veuillez patienter le temps que nous installions quelques dependances ...
 yt-dlp -U
 cls
 color a
 echo V2euillez patienter le temps que nous installions quelques dependances ...
 pip yt-dlp -U
 cls 
 echo Nous allons proceder a la fermeture du programme pour son bon fonctionnement. Veuillez reouvrir le programme apres sa fermeture.
 timeout /t 10
 exit




:G2
cls
color a
set /p liendump3= Veuillez saisir le lien de l'audio a telecharger : 
yt-dlp --extract-audio --audio-format mp3 %liendump3%
cls
echo votre audio a ete telecharge avec succes...
pause
goto choixG1


:G3
cls
color a
set /p liensdelavideos= Veuillez saisir le lien de la video a telecharger :
yt-dlp %liensdelavideos%
cls
echo votre video a ete telecharge avec succes
pause
goto choixG1


:G42
cls
color a
set /p lien_de_la_video= Veuillez saisir le lien de la video a telecharger :
yt-dlp -F %lien_de_la_video%
echo.
echo.2
echo.
pause
goto choixG1
 

:sortie07
cls
goto interface3


:choixM
cls
set /p logiciel= Veuillez saisir le nom du logiciel :
start %logiciel%
cls
goto interface3



:choixN
msconfig
cls
goto interface3



:choixX
cls
color a
echo.	
echo                                    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @                              Les Comptes Utilisateurs                                 @
echo                                    @                                                                                       @
echo                                    @                                                                                       @
echo                                    @.......................................................................................@
echo                                    .                                                                                       .
echo                                    .                                                                                       . 
echo                                    .                                                                                       .
echo                                    .   X0) Voir tous les comptes                    X1) Creer un compte                    .     
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .   X2)Desactiver un compte                     X3) Changer le mot de passe             .
echo                                    .                                                                                       .
echo                                    .                                                                                       . 
echo                                    .                                                                                       .
echo                                    .   X4) Activer un compte                       X5) Supprimer un compte                 .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                                                                                       .
echo                                    .                               007) RETOUR AU MENU PRINCIPA                            .
echo                                    .                                                                                       .
echo                                    .........................................................................................
echo.
echo.
echo.
echo.
set /p choix= ">>>>>":




if %choix%==X0 goto X0
if %choix%==X1 goto X1
if %choix%==X2 goto X2
if %choix%==X3 goto X3
if %choix%==X4 goto X4
if %choix%==X5 goto X5
if %choix%==007 goto interface3



<!---Consulter la liste de tous les comptes utilisateurs existants-->


:X0
cls
net user
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto choixX




<!---Creer un nouveau compte utilisateur-->


:X1
cls
set /p account= Donnez un nom a votre compte:
net user %account% /add
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       Votre compte (%account%) a ete cree avec succes !
echo.
echo 							   Definir un mot de passe pour le compte...
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
cls
net user %account% *
cls
net user
echo.
echo.
echo.
pause
goto choixX




<!--Desactiver un compte utilisateur-->

:X2
cls
net user
pause
cls
set /p choix=Veuillez saisir ou coler le nom du compte a desactiver :
net user %choix% /active:no
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                
echo.
echo                                                         Votre compte (%choix%) a ete desactive avec succes !
echo.
echo.                                                     						   
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto choixX


<!---Modifier le mot de passe d'un compte-->

:X3
cls
net user
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
set /p choix= Copier le nom du compte a modifier et appuyez sur une touche pour continuer!
cls
set /p name=Choisissez le compte :
set /p pin=Entrez le nouveau mot de passe:
net user "%name%" %pin%
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       Le mot de passe du compte (%name%) a ete modifie avec succes !
echo.							   
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause 
goto choixX


:X4
cls
net user
pause
cls
set /p choix=Veuillez saisir ou coller le nom du compte a activer :
net user %choix% /active:yes
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                
echo.
echo                                                         Votre compte (%choix%) a ete active avec succes !
echo.
echo.                                                     						   
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
goto choixX






:X5
cls
net user
cls
net user
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
cls
set /p choix=Veuillez saisir ou coller le nom du compte a supprimer :
net user %choix% /delete
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                       Vous venez de supprimer le compte (%choix%)  avec succes !
echo.							   
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause 
cls
net user
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
cls
goto choixX
