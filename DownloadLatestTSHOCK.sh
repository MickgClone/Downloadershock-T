#!/bin/bash
if [ -f ./TerrariaServer.exe ]; then echo "TShock Already Installed! Delete TerrariaServer.exe While Server Is Off To Update!" ; sleep 2 ; mono TerrariaServer.exe $@
elif [ ! -f ./Tshock.zip ]; then echo "Downloading Tshock..." ; wget -qO - https://api.github.com/repos/Pryaxis/TShock/releases/latest | grep browser_download_url | grep TShock | cut -d  '"' -f 4 | wget -cqi - -O "Tshock.zip" && echo "Done!" ; echo "Unzipping...." ; unzip -u Tshock.zip && echo "Unzipped Succesfully!" || echo "Failed To Unzip!" && echo "Update Succesful! Start the server again to run it!"
elif [ -f ./Tshock.zip ]; then echo "Unzipping already existing Zip file..." ; unzip -u Tshock.zip && echo "Unzipped Succesfully! Start the server again to run it!" || echo "Unzip Unsuccessful!"
fi