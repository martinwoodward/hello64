hello.d64: hello.asm
	acme --cpu 6510 --format cbm --outfile hello.prg hello.asm
	c1541 -format foo,id d64 hello.d64 -write hello.prg
