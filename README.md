Papilio-Arcade fork with updates for the Papilio pro
====================================================

A fork of the arcade collection from papilio.
Initially forked to fix the ROM checksums and batch files for pac-man, now uses US/Midway pac-man ROM vs Namco Japan ROMs, but I've made a few changes in scripts and configs to help building for the Papilio Pro with Arcade megawing.


For each ROM do the following...only pacman and frogger have been tested
If any of the rom utilites get errors they must be fixed before you build.

Frogger 
copy roms matching the checksums in cramble_rel001_papilio/scripts/build_roms_frogger.bat to the cramble_rel001_papilio/roms/frogger_sega directory

cd scramble_rel001_papilio/scripts
run build_roms_frogger.bat
You should see new files in the ../build direcotry

goto the build directory ../build
Open and generate frogger_papilio_pro_lx9_Arcade_MegaWing.xise
run build/copy-frogger-lx9.cmd

run merge_roms_frogger.bat

Send the bitfile to your papilio pro...




