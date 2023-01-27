# blockchain_code_sharing

## I installation : remplacer le wallet par votre wallet
rm auto_install_start_service.sh & wget https://raw.githubusercontent.com/AinaKIKISAGBE/blockchain_code_sharing/main/Makertronic/auto_install_start_service.sh && chmod 777 ./auto_install_start_service.sh  && ./auto_install_start_service.sh "nexa:nqtsq5g555kgqey6trhckypve5z66dmsqs0u855hkezcptrm" 


## II utilisation 
le miner rigel va démarrer tout seul quand le pc redémarre, mais si vous voulez le monitorer. Par exemple, vous loulez lancer un autre miner comme Gminer sur la page de hiveos, et pour éviter que 2 miner solicite les mêmes cates, alors il faut éteindre ce qui est en cours d'exécution avant de lancer le nouveau miner, du coup il faudra stoper le miner rigel miner avant de lancer votre nouveau miner Gminer

### II.1 stoper le miner rigel
systemctl stop rigel_miner_amiralks14.service 

### II.2 demarrer le miner rigel
systemctl start rigel_miner_amiralks14.service 

### II.3 redemarrer le miner rigel
systemctl restart rigel_miner_amiralks14.service 

### afficher le status de rigel
systemctl status rigel_miner_amiralks14.service 

### pour désactiver le miner rigel pour qu'il ne se lance plus automatiquement au redémarrage 
systemctl stop rigel_miner_amiralks14.service & systemctl disable rigel_miner_amiralks14.service

### pour réactiver le miner rigel pour qu'il se lance automatiquement au redémarrage 
systemctl enable rigel_miner_amiralks14.service  & systemctl start rigel_miner_amiralks14.service 

## enjoy






