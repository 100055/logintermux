#!/bin/sh
echo "Selamat Datang"
read -p "Masukkan Untuk Username Mu: " user

echo "#!/bin/sh\np=$user\nread -p 'Masukkan Username: ' nama\nclear\nif [ "$"nama = "$"p ]\nthen\necho '\033[92m<-----Selamat Datang----->'\ncat $PREFIX/etc/motd\nsleep 1\nbash\nelse\necho 'Login Gagal'\nexit 1\nfi"> log
