#!/bin/bash
#Инициализация
   clear
   echo "Инициализация скрипта..."
   NAMEUSER=$(whoami)
   sleep 1
   clear
   echo "Скрипт запущен под пользователем [ $NAMEUSER ]"
   echo "Скрипт разработан @ub30p011 TELEGRAM"
   sleep 2
   clear
#Кнопки выбора установки
  echo "Выберете параметр установки сервера:"

  echo "1 Установка сервера java 1.20.6 с ядром Paper"
  echo "2 Установка сервера java 1.20.2 с ядром Paper"
  echo "3 Установка сервера java 1.20.6 с ядром Forge"
  echo "4 Установка сервера java 1.20.1 с ядром Forge"
  echo "5 Установка сервера java 1.20.1 с ядром Fabric"
  echo "6 Установка сервера java 1.19.2 с ядром Forge"
  echo "7 Установка сервера java 1.21 с ядром Paper"
  echo "8 Установка севрера java 24w14potato"
  echo "-"
  echo "[9 Выход из скрипта установки]"

#Скприты установки сервера
 read doing
    case $doing in
      1)
         sudo -l
         mkdir /home/$NAMEUSER/server-paper-1.20.6
         mkdir /home/$NAMEUSER/server-paper-1.20.6/plugins
         cd /home/$NAMEUSER/server-paper-1.20.6
         wget https://api.papermc.io/v2/projects/paper/versions/1.20.6/builds/82/downloads/paper-1.20.6-82.jar
         mv paper-1.20.6-82.jar server.jar
         wget https://raw.githubusercontent.com/ShulgaDmitriy/pomoika/main/start.sh
         cd /home/$NAMEUSER/server-paper-1.20.6
         sudo chmod +x start.sh
         . start.sh
         sleep 80
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' /home/$NAMEUSER/server-paper-1.20.6/server.properties
         . start.sh
         ;;
      2)
         sudo -l
         mkdir /home/$NAMEUSER/server-paper-1.20.2
         cd /home/$NAMEUSER/server-paper-1.20.2
         wget https://api.papermc.io/v2/projects/paper/versions/1.20.2/builds/318/downloads/paper-1.20.2-318.jar
         mv paper-1.20.2-318.jar server.jar
         wget https://raw.githubusercontent.com/ShulgaDmitriy/pomoika/main/start.sh
         cd /home/$NAMEUSER/server-paper-1.20.2
         sudo chmod +x start.sh
         . start.sh
         sleep 60
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' /home/$NAMEUSER/server-paper-1.20.2/server.properties
         . start.sh
         ;;
      3)
         sudo -l
         mkdir /home/$NAMEUSER/server-forge-1.20.6
         cd /home/$NAMEUSER/server-forge-1.20.6
         wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.6-50.0.22/forge-1.20.6-50.0.22-installer.jar
         java -jar forge-1.20.6-50.0.22-installer.jar --installServer
         sleep 90
         rm forge-1.20.6-50.0.22-installer.jar
         . run.sh
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' /home/$NAMEUSER/server/server.properties
         . run.sh
         ;;
      4)
         sudo -l
         mkdir server-forge-1.20.1
         cd /home/$NAMEUSER/server-forge-1.20.1
         wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.2.0/forge-1.20.1-47.2.0-installer.jar
         java -jar forge-1.20.1-47.2.0-installer.jar --installServer
         sleep 90
         rm forge-1.20.1-47.2.0-installer.jar
         . run.sh
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' /home/$NAMEUSER/server/server.properties
         . run.sh
         ;;
      5)
         sudo -l
         mkdir server-fabric-1.20.1
         cd /home/$NAMEUSER/server-fabric-1.20.1
         curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.15.11/1.0.1/server/jar
         wget https://raw.githubusercontent.com/ShulgaDmitriy/pomoika/main/start.sh
         sudo chmod +x start.sh
         mv fabric-server-mc.1.20.1-loader.0.15.11-launcher.1.0.1.jar server.jar
         java -Xmx4G -jar server.jar nogui
         sleep 200
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' /home/$NAMEUSER/server-fabric-1.20.1/server.properties
         sed -i 's/difficulty=easy/difficulty=normal/g' /home/$NAMEUSER/server-fabric-1.20.1/server.properties
         . start.sh
         ;;      
      6)
         sudo -l
         mkdir server-forge-1.19.2
         cd /home/$NAMEUSER/server-forge-1.19.2
         wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.19.2-43.3.0/forge-1.19.2-43.3.0-installer.jar
         java -jar forge-1.19.2-43.3.0-installer.jar --installServer
         sleep 90
         rm forge-1.19.2-43.3.0-installer.jar
         . run.sh
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' /home/$NAMEUSER/server-forge-1.19.2/server.properties
         sed -i 's/difficulty=easy/difficulty=normal/g' /home/$NAMEUSER/server-forge-1.19.2/server.properties
         . run.sh
         ;;
      7) 
         sudo -l
         mkdir server-paper-1.21
         cd /home/$NAMEUSER/server-paper-1.21
         wget https://api.papermc.io/v2/projects/paper/versions/1.21/builds/37/downloads/paper-1.21-37.jar
         wget https://raw.githubusercontent.com/ShulgaDmitriy/pomoika/main/start.sh
         sudo chmod +x start.sh
         mv paper-1.21-37.jar server.jar
         cd /home/$NAMEUSER/server-paper-1.21
         . start.sh
         sleep 80
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' /home/$NAMEUSER/server-paper-1.21/server.properties
         . start.sh
         ;;
      8) 
         sudo -l
         mkdir server-24w14potato
         cd home/$NAMEUSER/server-24w14potato
         wget https://piston-data.mojang.com/v1/objects/2d29eee4f5a71f323d20b36d623e2ec21dab74f7/server.jar
         wget https://raw.githubusercontent.com/ShulgaDmitriy/pomoika/main/start.sh
         cd home/$NAMEUSER/server-24w14potato
         sudo chmod +x start.sh
         . start.sh
         sleep 40
         sed -i 's/eula=false/eula=true/g' eula.txt
         sed -i 's/online-mode=true/online-mode=false/g' server.properties
         . start.sh
         ;;
      9)
         clear
         echo "Завершение работы скрипта..."
         sleep 1
         clear
         exit 0
         ;;
      *)
         echo "Введён не правильный параметр установки"
     esac