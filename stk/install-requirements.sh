# https://askubuntu.com/questions/454253/how-to-run-32-bit-app-in-ubuntu-64-bit
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386

# https://askubuntu.com/questions/611933/missing-libsm-so-6-library-qt-creator-installation-error/
sudo apt-get install libsm6:i386
sudo apt-get install libxrender1:i386
