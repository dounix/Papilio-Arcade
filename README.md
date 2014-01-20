Papilio-Arcade fork
====================================================
With more updates for the Papilio pro

A fork of the arcade collection from papilio.
Initially forked to fix the ROM checksums and batch files for pac-man
US/Midway pac-man ROM vs Namco Japan ROMs

I've made a few changes in scripts and configs to help building for the Papilio Pro with Arcade megawing.

Only pacman and frogger have been tested
If any of the rom scripts get errors they must be fixed before you build.

Frogger
-------

copy ROMs
---------
copy roms matching the checksums in scramble_rel001_papilio/scripts/build_roms_frogger.bat 
    to the scramble_rel001_papilio/roms/frogger_sega directory


Generate vhdl from ROM files
---------
open a command prompt and navigate to scramble_rel001_papilio/scripts
> build_roms_frogger.bat

You should see new files in the ../build direcotry, in particular non-zero lenth ROM_*.vhd files


Run the ISE project for the lx9
---------
Browse the build directory and launch
> start frogger_papilio_pro_lx9_Arcade_MegaWing.xise

Build this project, you will generate plenty of warnings, but it will build.


Copy the output files to the bit_files dir using the build/cmd script
---------
> build/copy-frogger-lx9.cmd


Merge ROM data into the bitfile
---------
I believe the bit file that exists now has the ROM structure, but not the copy written program.
Once the generated bitfile is in the location the batch file expects
> merge_roms_frogger.bat

After this step, this bit file shouldn't be distrubted to people without a license for that ROM!


Send the bitfile to your papilio pro...
---------
However you normally do this




