#!/bin/bash

#PLEASE DONT RECODE THIS BASH FILE :(

#credit
echo -e "\e[34m##################################################"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                MADE BY LIGHNABZ                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m#                                                #"
echo -e "\e[34m##################################################"

echo ""
echo -e "\e[91mNOTE:"
echo -e "\e[33mJava file source taken from \e[96mBellSoft Liberica"
cpuarch=`dpkg --print-architecture`
echo -e "\e[33mYour prossesor architecture is $cpuarch"
echo -e "\e[33mPlease dont recode this script"
echo ""
echo -e "\e[92mJoin To Our Discord!"
echo -e "\e[36mhttps://discord.gg/FMh4ufNCMv"
echo ""
echo ""

#start installing the requiriments
echo -e "\e[33mInstalling requiriments..."
apt-get install wget &> /dev/null
mkdir /usr/lib/jvm &> /dev/null
echo -e "\e[33mDone!"
echo ""

#start installing java tgz files
echo -e "\e[33mInstalling and setup Java..."
echo -e "\e[33mThis may take a few moments, you maybe can grab a coffe :)..."
case `dpkg --print-architecture` in
arm64)
      archurl="aarch64" ;;
aarch64)
      archurl="aarch64" ;;
armhf)
      archurl="arm32-vfp-hflt" ;;
arm)
      archurl="arm32-vfp-hflt" ;;
amd64)
      echo "\e[31mYour architecture not complatible" ;;
x86_64)
      echo "\e[31mYour architecture not complatible" ;;
x86)
      echo "\e[31mYour architecture not complatible" ;;
i*86)
      echo "\e[31mYour architecture not complatible" ;;
*)
      echo "\e[31mYour architecture not complatible" ;;

esac
wget --no-check-certificate https://download.bell-sw.com/java/17.0.1+12/bellsoft-jdk17.0.1+12-linux-$archurl.tar.gz &> /dev/null

#start set java for dpkg
tar -xvzf bellsoft-jdk17.0.1+12-linux-$archurl.tar.gz &> /dev/null
mv ~/jdk-17.0.1 /usr/lib/jvm
update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk-17.0.1/bin/java" 0 &> /dev/null
update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk-17.0.1/bin/javac" 0 &> /dev/null
update-alternatives --set java /usr/lib/jvm/jdk-17.0.1/bin/java &> /dev/null
update-alternatives --set javac /usr/lib/jvm/jdk-17.0.1/bin/javac &> /dev/null
update-alternatives --list java &> /dev/null
update-alternatives --list javac &> /dev/null
rm -rf ~/bellsoft-jdk17.0.1+12-linux-$archurl.tar.gz
echo -e "\e[33mDone!"
echo ""
echo -e "\e[36mEnjoy your Java JDK-17 on ARM and the coffe :)"
echo -e "\e[36mIf you grab a coffe :v"
#reset the color
echo -e "\e[0m"
java -version

#End of bash
