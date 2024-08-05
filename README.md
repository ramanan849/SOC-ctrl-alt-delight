# SOC: Unix-ctrl-alt-delight <br>
**Name** : R S Gokularamanan <br>
**Roll No** : 23B1854 <br>
**Project** : A Unix Journey: Ctrl+Alt+Delight <br>
**Project ID** : 29 <br>

This repository contains my code, scripts and reports for the weekly assignments given by my mentors. <br>
1. **[Week 1](https://github.com/ramanan849/SOC-ctrl-alt-delight/tree/fd1ce6bfca8c3385a4130424e80d47fca4945a65/week1)** <br>
      i. Basics of linux terminal commands, shortcuts, and technical know-hows. <br>
      ii. Had an assignment <br>
  
2. **[Week 2](https://github.com/ramanan849/SOC-ctrl-alt-delight/tree/fd1ce6bfca8c3385a4130424e80d47fca4945a65/week2)** <br>
      i. Learnt how to create scripts and execute them. <br>
      ii. The assignment had questions, some of which were technically upgraded versions of week1 questions, while the others involved creating an interactive session on CLI using fancy ascii symbols. <br>
     
3. **[Week 3](https://github.com/ramanan849/SOC-ctrl-alt-delight/tree/fd1ce6bfca8c3385a4130424e80d47fca4945a65/week3)** <br>
      i. Learnt about concurrency <br>
      ii. Had practice problems <br>
  
***
**From Week 4 to 8, I was asked to submit the .asm (assembly) files and the entire modified source code of MikeOS and was not told to make a report. For weeks 5,6 and 7 however, I was supposed to make a .md file to explain my answers and my NASM code for various assignments that had been provided. <br>
The folder _[Reports for weekly assignments](https://github.com/ramanan849/SOC-ctrl-alt-delight/tree/fd1ce6bfca8c3385a4130424e80d47fca4945a65/Reports%20for%20weekly%20assignments)_ will contain all the reports and explanations<br>
So, the following will include a brief of what each week's contents were.** <br>  

4. **[Week 4](https://github.com/ramanan849/SOC-ctrl-alt-delight/tree/fd1ce6bfca8c3385a4130424e80d47fca4945a65/week4)** <br>
      i. First objective - to install and run MikeOS on an emulator (QEMU on Linux); had to get the audio working <br>
      ii. Second objective - to insert custom text in the command-line of MikeOS by editing the assembly files concerning cli.asm and kernel.asm <br>
     iii. Introduction to NASM (assembly language) and some practice problems <br>
     (Link to video showing working audio on MikeOS : https://youtu.be/mzwOUsKkxq0)
  
5. **[Week 5](https://github.com/ramanan849/SOC-ctrl-alt-delight/tree/fd1ce6bfca8c3385a4130424e80d47fca4945a65/week5)** <br>
   _**Learnt** how CLI commands are implemented in MikeOS CLI._ <br>
      i. First task : to implement a basic command TELLJOKE that prints a joke to the terminal. <br>
      ii. Second task : to modify the TELLJOKE command implemented such that each time the command is executed, a different joke had to be printed. Here, I had to learn how **random number generation** worked in MikeOS. <br>
      iii.  **[Boss Level]** Third task : Here, I had to further modify the already modified TELLJOKE command such that a **Musical tune** played before displaying a random joke. This involved learning how to play musical notes and upping my music skill to play a tune (I managed to a create scrawny version of the classic 'Mary had a little lamp'). <br>
      
6. **[Week 6 and 7](https://github.com/ramanan849/SOC-ctrl-alt-delight/tree/fd1ce6bfca8c3385a4130424e80d47fca4945a65/week6%2C7)**  - was told to make a [report]() for these two weeks <br> 
   (It involved pretty heavy things to learn and understand, along with longer and more difficult assignments, hence this spanned over two week2) <br>
   _[**Understanding** *memory management* in MikeOS: how variables are stored, userspace programs are handled, files are loaded and retrieved <br>
   **Creating** *SYSCALLS* by editing the kernel of MikeOS, and implementing them in self-made and modified programs_ ]  <br> <br>
      i. First task : To create a simple SYSCALL (system call function, a function that has global scope - can be used throughout the OS) called *os_say_hello* which prints a simple text message such as "Hello, is this real?!" <br>
      ii. Second task : To create a program that takes in an input of a program (.bin) and open it. This had two parts:
            a. To get started, I had to create a program **meraprog.bin** that opened files (.bin as well as .bas) whose names were given as input on CLI and loaded at the default memory location (32768).   <br>
            b. In the next part, I had to make a program **eggzec.bin** just to open one certain file: _"keebored.bin"_, which I created by modifying an already existing program, _"keyboard.bin"_ (an electronic keyboard from which we can play music) such that once _keebored.bin_ is closed, a text message such as _"Execution done!!!"_ is displayed on the CLI. To do all this, I had to understand how I could load programs into RAM and at what specific locations. <br>
            c. To achieve part b, I had to create a new function call _**os_exec_bin**_ which could execute programs loaded at any memory location (>32768). <br>
      iii. **[Boss Level]** Third task : This involved a generalization of **eggzec.bin** which used _os_exec_bin_ and could be able to load any program (user-defined and system) from any RAM location in MikeOS (if location was specified, then load the program at that point (the program must also be coded to always load at the point), otherwise, just load it from the default the location, i.e., 32768).  <br>
  

***
**Resources** shared by my mentors (Arvind, Himanshu and Mayank) : <br>
   1. Arvind's - https://github.com/kingmk-3/SoC_week1 and https://github.com/kingmk-3/SoC_week2
   2. Mayank's - [Week3 resources](week3/theory_folder/theory_folder)
   3. Himanshu's - https://github.com/hotramen-hellfire/-ctrl-alt-delight-
