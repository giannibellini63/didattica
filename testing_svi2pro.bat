@ECHO OFF
REM Testing SVI2PRO
CLS
ECHO Y | DEL .\PRO\*.*
@ECHO Esecuzione: SVI e PRO
@ECHO Esecuzione: SVI e PRO > esecuzione.txt
DIR .\SVI
DIR .\PRO
DIR .\SVI >> esecuzione.txt
DIR .\PRO >> esecuzione.txt
ECHO Attendere qualche secondo ...
PAUSE
@ECHO Prima esecuzione: copia tutti i file da SVI a PRO
@ECHO Prima esecuzione: copia tutti i file da SVI a PRO >> esecuzione.txt
PY svi2pro.py
DIR .\SVI
DIR .\PRO
DIR .\SVI >> esecuzione.txt
DIR .\PRO >> esecuzione.txt
@ECHO Attendere qualche secondo ...
PAUSE
@ECHO Seconda esecuzione: non DEVE copiare nulla >> esecuzione.txt
@ECHO Seconda esecuzione: non DEVE copiare nulla 
PAUSE
PY svi2pro.py
DIR .\PRO
DIR .\PRO >> esecuzione.txt
@ECHO Attendere qualche secondo ...
PAUSE
@ECHO Terza esecuzione: copia solo il file modificato da SVI a PRO >> esecuzione.txt
@ECHO Terza esecuzione: copia solo il file modificato da SVI a PRO
@ECHO Modifica file A.TXT
DIR >> .\SVI\A.TXT
PAUSE
DIR .\SVI
DIR .\SVI >> esecuzione.txt
@ECHO Attendere qualche secondo ...
PAUSE
PY svi2pro.py
DIR .\SVI
DIR .\PRO
DIR .\SVI >> esecuzione.txt
DIR .\PRO >> esecuzione.txt
PAUSE
