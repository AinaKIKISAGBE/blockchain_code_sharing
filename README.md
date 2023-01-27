# blockchain_code_sharing

### I installation
## I.1download
wget https://raw.githubusercontent.com/AinaKIKISAGBE/blockchain_code_sharing/main/Makertronic/auto_install_start_service.sh

## I.2 install : remplacer le wallet par votre wallet
./auto_install_start_service.sh "nexa:nqtsq5g555kgqey6trhckypve5z66dmsqs0u855hkezcptrm" 

#### II utilisation 
## II.1 stoper le miner 
systemctl stop rigel_miner_amiralks14.service 

## II.2 demarrer le miner
systemctl start rigel_miner_amiralks14.service 

## II.3 redemarrer le miner
systemctl restart rigel_miner_amiralks14.service 
