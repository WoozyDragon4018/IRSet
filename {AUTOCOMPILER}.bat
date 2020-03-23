@echo off
color 0a
echo Welcome to Auto Compiler by WoozyDragon!
echo Just wait and watch as the NML file gets created.
nmlc --grf irset.grf irset.nml

echo If no error occured, this should have placed a GRF file in the dir.
echo Copying process initiated.

copy irset.grf C:\Users\devas\Documents\OpenTTD\newgrf
echo It's done!!
pause