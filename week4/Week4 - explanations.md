# Week4 - explanations
![image](https://github.com/user-attachments/assets/53923a48-c5e4-48de-8c64-be609ad55533)

1. Cmd-to-start-mikeos-on-qemu-with-audio-fix : <br>

    _qemu-system-i386 -audiodev pa,id=audio0 -machine pcspk-audiodev=audio0 -drive format=raw,file=disk_images/mikeos.flp_ <br>
    
2. Instructions-to-rebuild-mikeos-after-modifications : <br>
    **step 0** - be in mikeOS dir <br>
    **step 1** - $ sudo bash <br>
    **step 2** - $ ./build-linux.sh <br>
    (that's all) <br>
    
3. Video that shows that MikeOS is set up and audio is working : [Week4 audio working](https://drive.google.com/file/d/1rokwYvV_hIDa3cUOoFDErgcZZaUBqcrZ/view?usp=drive_link) 
