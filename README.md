# blockchain_code_sharing

### installation
wget https://raw.githubusercontent.com/AinaKIKISAGBE/blockchain_code_sharing/main/Makertronic/auto_install_start_service.sh

### remplacer le wallet par votre wallet
./auto_install_start_service.sh "nexa:nqtsq5g555kgqey6trhckypve5z66dmsqs0u855hkezcptrm" 

#### stoper le miner 
systemctl stop rigel_miner_amiralks14.service 

### demarrer le miner
systemctl start rigel_miner_amiralks14.service 

### redemarrer le miner
systemctl restart rigel_miner_amiralks14.service 
