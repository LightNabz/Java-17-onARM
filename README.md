# Java On Arm
Run java on your ARM device!

![Screenshot](https://cdn.discordapp.com/attachments/715495833054740490/911238887601471528/Screenshot_287.png)

## REQUIRIMENT
```sh-session
Download the requiriment

$ sudo apt install wget
```

## COMMAND
Download the .sh file
```sh-session
$ wget --no-check-certificate https://raw.githubusercontent.com/LightNabz/JavaOnArm/main/java-17.0.1-arm64.sh
 (for arm 64 bit)
 
$ wget --no-check-certificate https://raw.githubusercontent.com/LightNabz/JavaOnArm/main/java-17.0.1-arm32.sh 
 (for arm 32 bit)
 ```
 after doing as above, use
 
 ```sh-session
 $ sudo bash java-17.0.1-arm64.sh
 (for 64bit)
 
 $ sudo bash java-17.0.1-arm32.sh
 (for 32bit)
 ```
and yeah, java has sucsesfully installed on your arm device.

if you wants install java on termux, just change `/usr/etc` to `$PREFIX/etc` with nano or vim
