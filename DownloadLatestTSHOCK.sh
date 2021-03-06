#!/bin/bash
if [ -f ./TerrariaServer.exe ]; then echo "TShock Already Installed! Delete TerrariaServer.exe While Server Is Off To Update!"
elif [ ! -f ./Tshock.zip ]; then echo "Downloading Tshock..." ; wget -qO - https://api.github.com/repos/Pryaxis/TShock/releases/latest | grep browser_download_url | grep TShock | cut -d  '"' -f 4 | wget -cqi - -O "Tshock.zip" && echo "Done!" ; echo "Unzipping...." ; unzip -u Tshock.zip && echo "Unzipped Succesfully!" || echo "Failed To Unzip!" && echo "Update Succesful! You can start the server now!"
elif [ -f ./Tshock.zip ]; then echo "Unzipping already existing Zip file..." ; unzip -u Tshock.zip && echo "Unzipped Succesfully! You can start the server now!" || echo "Unzip Unsuccessful!"
fi