HELOWRLD.TOS:	HELOWRLD.ELF
	vlink HELOWRLD.ELF -oHELOWRLD.TOS -bataritos
	cp HELOWRLD.TOS ~/Documents/Hatari/HardDrives/D/HELOWRLD/

HELOWRLD.ELF:	helloworld.asm
	vasmm68k_mot helloworld.asm -chklabels -nocase -L helloworld.lst -Felf -o HELOWRLD.ELF

clean:
	-@rm -f *.ELF
	-@rm -f *.TOS
	-@rm -f *.lst
	-@rm -f ~/Documents/Hatari/HardDrives/D/HELOWRLD/*
