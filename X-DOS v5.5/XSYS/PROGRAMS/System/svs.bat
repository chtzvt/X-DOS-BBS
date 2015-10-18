REM This is the saving system. You have to reset the autoload function to use it with the current save file.
cd ..
cd Saves
if exist %curlod% del /F /S /Q %curlod%
if defined cosh echo set cosh=%cosh%>> %curlod%
if defined emd echo set emd=%emd%>> %curlod%
echo set ingame=no>> %curlod%
if defined curlod echo set curlod=%curlod%>> %curlod%
cd ..