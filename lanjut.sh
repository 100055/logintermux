#!/bin/sh
echo "Selamat Datang"
read -p "Masukkan Untuk Username Mu: " user

echo "#!/bin/bash\ntrap ctrl_c INT 2\nctrl_c(){\necho 'Exiting'\nsleep 2\nexit\n}\np=$user\nread -p 'Masukkan Username: ' nama\nclear\nif [ "$"nama = "$"p ]\nthen\necho '\033[92m<-----Selamat Datang----->'\ncat $PREFIX/etc/motd\nsleep 1\nbash\nelse\necho 'Login Gagal'\nexit 1\nfi">log

