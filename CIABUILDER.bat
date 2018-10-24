@echo off
bannertool.exe makebanner -i banner.png -a audio.wav -o banner.bnr
bannertool.exe makesmdh -s "3DS Timer" -l "Rubik's Cube Timer with random staate scrambles" -p "Jayanth Rajakumar" -i icon.png  -o icon.icn
makerom -f cia -o 3DS_Timer.cia -DAPP_ENCRYPTED=false -rsf 3DS_Timer.rsf -target t -exefslogo -elf 3DS_Timer.elf -icon icon.icn -banner banner.bnr
makerom -f cci -o 3DS_Timer.3ds -DAPP_ENCRYPTED=true -rsf 3DS_Timer.rsf -target t -exefslogo -elf 3DS_Timer.elf -icon icon.icn -banner banner.bnr
echo Finished! 3DS and CIA have been built!
pause