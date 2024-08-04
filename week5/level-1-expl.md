# Week5 - level-1-explanations <br>
1. the time string is fetched using the os_get_time function. It gets the time string and is stored in the temp_string in 'bx', which later is moved to 'si', from which the stored info is printed on the cli using 'os_print_string'. <br>

2. os_get_time_string is defined in the 'strings.asm' file which contains a load of string functions in it. The function obtains the 'time data' from BIOS, in BCD format. <br>

3. os_print_string is defined in the 'screen.asm' file. <br>

4. the functions with os_ prefixes are part of the system calls. They are part of the source code of the OS. Functions other that don't have this prefix can be found in applications which in one way or the other, use these system calls to do some action / get some data. <br>
