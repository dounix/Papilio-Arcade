REM Use this script to move your custom AVR8 bit file into the Arduino IDE.
REM Define the base directory for your Arduino IDE installation.
set base="..\bit_files"

copy scramble_top.bit %base%\frogger_hardware_lx9.bit
copy scramble_bd.bmm %base%\frogger_hardware_lx9_bd.bmm
pause
