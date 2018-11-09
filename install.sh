#!/bin/sh

trap "echo CTRL-C DETECTED EXITING.....&&sleep 1&&exit 2" INT 2

##Welcome
mulai(){
echo "\033[92m<-----Selamat Datang----->"
echo "Tunggu Sebentar"
for i in login log up editup delete
do
	if [ -f $PREFIX/bin/$i ]
	then
		echo "√[Mengapus File Lama]"
		rm -rf $PREFIX/bin/$i
		sleep 1
	else
		echo "Mempersiapkan"
	fi
done
if [ -f $PREFIX/etc/motd ]
then
	echo "√[Menghapus File Lama]"
	rm -rf $PREFIX/etc/motd
else
	echo "√"
fi
sleep 1
##
##New Username
read -p "Masukkan Username Baru: " a
read -p "Masukkan Password Baru: " b
##

##Write To File (up)
echo "user=$a\npass=$b">up
##

##Copying And Granted For Permissions
cp -r up $PREFIX/bin
cp -r log $PREFIX/bin
cp -r login $PREFIX/bin
cp -r motd $PREFIX/etc
cp -r editup $PREFIX/bin
cp -r delete $PREFIX/bin
chmod +x $PREFIX/bin/log
chmod +x $PREFIX/bin/up
chmod +x $PREFIX/bin/login
chmod +x $PREFIX/bin/editup
chmod +x $PREFIX/bin/delete
termux-fix-shebang $PREFIX/bin/log
termux-fix-shebang $PREFIX/bin/up
termux-fix-shebang $PREFIX/bin/login
termux-fix-shebang $PREFIX/bin/editup
termux-fix-shebang $PREFIX/bin/delete
##

##Finished
echo "Selesai :)"
echo "Please Restart Termux :)"
sleep 1
##
}

memakai(){
	echo "Pada Pilihan Menu Untuk Mengisntall Pilih Nomor 2"
	sleep 1
	echo "Untuk Mengganti Username Dan Password Cukup Dengan perintah "editup""
	sleep 1
	echo "Untuk Menghapus Script Login Cukup Dengan Perintah "delete""
	sleep 1
}

menu(){
echo "\033[92m<----- Menu ----->"
echo "[1] Cara Pemakaian"
echo "[2] Install"
read -p "Pilih Nomor: " pil
case $pil in
	1)
		memakai
		menu
		;;
	2)
		mulai
		;;
esac
}
menu
