#!/bin/sh

echo "\033[92m<-----Selamat Datang----->"
echo "Tunggu Sebentar"
for i in login log git
do
	if [ -f $PREFIX/bin/$i ]
	then
		echo "√"
		sleep 1
	else
		echo "Mempersiapkan"
	fi
done
sleep 1
sh lanjut.sh
cp -r log $PREFIX/bin
chmod +x $PREFIX/bin/log
echo "bash log" > $PREFIX/bin/login
rm -rf $PREFIX/etc/motd
cp -r motd $PREFIX/etc
echo "Selesai :)"
sleep 1
