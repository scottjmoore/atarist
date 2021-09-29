all: HELOWRLD.TOS BITMAP.TOS

HELOWRLD.TOS:	HELOWRLD.ELF
	vlink HELOWRLD.ELF -oHELOWRLD.TOS -bataritos
#	cp HELOWRLD.TOS ~/Documents/Hatari/HardDrives/D/HELOWRLD/

HELOWRLD.ELF:	helloworld.asm
	vasmm68k_mot helloworld.asm -chklabels -nocase -L helloworld.lst -Felf -o HELOWRLD.ELF

BITMAP.TOS:	BITMAP.ELF
	vlink BITMAP.ELF -oBITMAP.TOS -bataritos
#	cp BITMAP.TOS ~/Documents/Hatari/HardDrives/D/BITMAP/

BITMAP.ELF:	bitmap.asm
	vasmm68k_mot bitmap.asm -chklabels -nocase -L bitmap.lst -Felf -o BITMAP.ELF

clean:
	-@rm -f *.ELF
	-@rm -f *.TOS
	-@rm -f *.lst
	-@rm -f ~/Documents/Hatari/HardDrives/D/HELOWRLD/*

run-helloworld:
	make HELOWRLD.TOS
	hatari --confirm-quit 0 HELOWRLD.TOS

run-bitmap:
	make BITMAP.TOS
	hatari  --confirm-quit 0 BITMAP.TOS
