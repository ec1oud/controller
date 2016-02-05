cmake -DCHIP=mk20dx256vlh7 -DScanModule=MDErgo1 -DMacroModule=PartialMap \
        -DOutputModule=pjrcUSB -DDebugModule=full  \
        -DPartialMaps="MDErgo1-Default-1 lcdFuncMap" -DDefaultMap="MDErgo1-Default-0 lcdFuncMap" \
		-DBaseMap="defaultMap rightHand slave1 leftHand" \
        ..
make
mv kiibohd.elf right.elf
mv kiibohd.dfu.bin right.dfu.bin
replace kiibohd.dfu.bin right.dfu.bin -- load
mv load load-right
cmake -DCHIP=mk20dx256vlh7 -DScanModule=MDErgo1 -DMacroModule=PartialMap \
        -DOutputModule=pjrcUSB -DDebugModule=full  \
        -DPartialMaps="MDErgo1-Default-1 lcdFuncMap" -DDefaultMap="MDErgo1-Default-0 lcdFuncMap" \
		-DBaseMap="defaultMap leftHand slave1 rightHand" \
        ..
make
mv kiibohd.elf left.elf
mv kiibohd.dfu.bin left.dfu.bin
replace kiibohd.dfu.bin left.dfu.bin -- load
mv load load-left
