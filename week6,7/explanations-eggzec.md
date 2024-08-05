## Eggzec (week 3,4/ 7,8)	-- Gokularamanan R S	-- 23B1854

**Userspace programs**
------------------
1. Tracing how the programs are being run; from cli.asm =>
	From lines 134-243 (in my cli.asm), starting right after checking if the input entered is an 'internal command', or not, we start looking whether the input entered is an executable file - the input may/may not contain an extension. The program checks for .bin and .bas files. If such an executable exists (say, 'amazing' is the input entered, and amazing.bin exists, then amazing.bin is exectued, i.e., opened). If it doesn't exist, then the "invalid_msg" is printed in the cli, "command not found".

2. In the so called program "meraprogram.asm", os_print_string can be used while os_say_hello cannot be used. This is becuase os_print_string is a syscall, a function accessible on any program on the system (kinda similar to a function that is public, or a function with a global scope throughout the system). os_say_hello is not 'public' yet. It is just a user-defined function in string.asm (/mikeOS/source/features/string.asm), it is not access in meraprogram.asm (/mikeOS/source/programs/meraprogram.asm) 

	SO, this is whay syscalls are kinda 'supreme' with the ability to be callable everywhere in the OS.

3. To convert the os_say_hello to a syscall, I followed all the steps given in the BIBLE => 
	step1. added a vector to the new call (os_say_hello) in kernel.asm by typing in :  jmp os_say_hello		; 00D2h
	step2. made the vector at 00D2h accessible by name (os_say_hello) by typing in : os_say_hello	equ	00D2h	; Prints 'Hello' to screen ; in mikedev.inc
---------------------------------------------------
**MemMan in mikeOS**
----------------
1. The BIBLE has a nice memory map which shows the makeup of the 64KiB memory segment after MikeOS has loaded. 
	1.1.	Memory locations, [ 0 - 24575 (hex: 0h - 5FFFh) ] - 24KiB for kernel executable code. This is where are the syscalls are stored (os_say_hello is at 00D2h).
	1.2. 	Memory locations, [ 32768 - 65535 (hex: 8000h - FFFFh) ] - 32KiB is used for external programs, i.e., 'userspace programs'.
	1.3. 	mikeOS uses registers - ax,bx,cx,dx to temporarily store userspace variables. And, the memory locations where these registers are stored, fall in the range 32768 - 65535 bytes. ## NEED TO CHECK THIS!!! 
	1.4. The OS loads the program code at the location 32768, by "call 32768" with "mov si, command" already done before (command is the name of the external program). REFERRED FROM execute_bin / execute_bas of cli.asm

2. *meraprog.asm*
```nasm
    BITS 16
	ORG 32768
	%INCLUDE 'mikedev.inc'

start:
    call os_print_newline
	mov si, mystring
	call os_print_string

    call os_print_newline

    mov si, prompt
    call os_print_string

    mov ax, input
	call os_input_string

    call os_print_newline

    mov ax, input			; command is the input given by user				
	mov cx, 32768           ; by default, external programs are loaded at 32768 location, but this can be changed to anything in the range [32768,65535]
	call os_load_file

    mov ax,0
    mov bx,0
    mov cx,0

    call 32768              ; again, can be changed. 


	ret
;----------------------------------------------------
	mystring db 'Enter filename with extension .bin', 0
    prompt   db '>>__>> ',0
    input		times 256 db 0
    command     times 256 db 0
    end     db 'thats all for now! hang tight!'

```

----------------------------------------------------------------------------------------------------
**Eggzec**
1. i have created a binary file by the name - **eggzec.bin** that loads up *keebored.bin*. I changed the RAM location of *keebored.bin* from its default 32768 to 32888 (just for fun). Further, I am also calling another .bin file by the name *boredhuh.bin* (RAM loc = 33690), again just for fun.
----------------------------------------------------------------------------------------------------
**Final Boss**
1. I wrote a new syscall, **os_exec_bin** in *~/mikeOS/source/features/disk.asm* file. The following are the contents :
```nasm
os_exec_bin:
	pusha
	mov si, fil_prompt
	call os_print_string

	mov ax, filnam			; filename
	call os_input_string

	call os_print_newline	

	mov si, ram_prompt
	call os_print_string

	mov ax, loc				; location in ram (bytes, say 30396)
	call os_input_string
	mov si, loc
	call os_string_to_int  ; should i convert loc to int? want answers
	mov cx,ax

	call os_print_newline

	mov ax, filnam		
	call os_load_file

	mov ax,0
	mov bx,0
	mov cx,0

	mov si, loc
	call os_string_to_int  
	mov dx,ax

	call dx


	popa
	ret
	filnam times 256 db 0 	; gets the file name
	loc    times 256 db 0	; get ram location
	fil_prompt db 'Filename >> ', 0
	ram_prompt db 'RAM Location >>', 0
```

2. Then, to make sure that this syscall is available throughout the OS, I added a vector to the new call (*jmp o_exec_bin*). THe vector value (in hex) is ***00D5h***

3. Then, I wrote *os_exec_bin equ 00D5h* in *~/mikeOS/programs/mikedev.inc*. The syscall def is over.

4. I saved the final boss file as ***boss.bin***. Its contents:

```nasm

	BITS 16
	ORG 32768
	%INCLUDE 'mikedev.inc'


; This is the final boss level of EGGZEC
; os_exec_bin definition can be seen in disk.asm
; the jmp vector value (hex) can be looked in kernel.asm


start:
    call os_print_newline
	mov si, mystring
	call os_print_string

    call os_print_newline

    call os_exec_bin

    call os_print_newline

	ret
;----------------------------------------------------
	mystring db 'Enter filename with extension .bin', 0
    prompt   db '>>__>> ',0
    input		times 256 db 0
    command     times 256 db 0
    end     db 'thats all for now! hang tight!'

```
# Videos
1. [Video for MemMan and Eggzec](https://drive.google.com/file/d/1IZu36Uvi8AyqkjxAQDvWTbVvGiz-gC8t/view?usp=drive_link)
2. [Video for the final BOSS]()
		
