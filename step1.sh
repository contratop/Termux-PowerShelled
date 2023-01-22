## Step 1

cd $HOME
pkg install wget -y
pkg install proot-distro -y
proot-distro install debian


echo "Deseas iniciar sesion automaticamente en debian al abrir Termux? (Y/N)"
read -r answer
if [ "$answer" = "Y" ] || [ "$answer" = "y" ]; then
    echo "Datos guardados"
    echo "proot-distro login debian" >> $HOME/.bashrc
    proot-distro login debian
    exit
elif [ "$answer" = "N" ] || [ "$answer" = "n" ]; then
    clear
    proot-distro login debian
    exit
else
    echo "Opcion invalida"
    echo "Omitiendo inicio de sesion automatico"
    exit
fi

rm step1.sh