# blockchain_code_sharing

## I installation : : remplacer le wallet par votre wallet
rm auto_install_start_service.sh && wget https://raw.githubusercontent.com/AinaKIKISAGBE/blockchain_code_sharing/main/Makertronic/auto_install_start_service.sh && chmod 777 ./auto_install_start_service.sh  && ./auto_install_start_service.sh "nexa:nqtsq5g555kgqey6trhckypve5z66dmsqs0u855hkezcptrm" 


## II utilisation 
### II.1 stoper le miner 
systemctl stop rigel_miner_amiralks14.service 

### II.2 demarrer le miner
systemctl start rigel_miner_amiralks14.service 

### II.3 redemarrer le miner
systemctl restart rigel_miner_amiralks14.service 

### afficher le status
systemctl status rigel_miner_amiralks14.service 
