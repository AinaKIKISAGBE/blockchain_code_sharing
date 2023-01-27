
wallet_addr=$1

killall rigel 
systemctl stop rigel_miner_amiralks14.service 
rm /etc/systemd/system/multi-user.target.wants/rigel_miner_amiralks14.service 
mkdir rigelnexa 
cd rigelnexa 
wget https://github.com/rigelminer/rigel/releases/download/1.3.0/rigel-1.3.0-linux.tar.gz 
tar -xvzf rigel-1.3.0-linux.tar.gz 
cd .. & cd .. & cd .. & cd .. 
rm /rigelnexa/rigel-1.3.0-linux/rigel_miner_amiralks14.sh 
touch /rigelnexa/rigel-1.3.0-linux/rigel_miner_amiralks14.sh 
echo "./rigelnexa/rigel-1.3.0-linux/rigel -a nexapow -o stratum+tcp://pool.woolypooly.com:3124 -u $wallet_addr -w my_rig_$HOSTNAME --log-file rigelnexa/rigel-1.3.0-linux/logs/miner.log"
echo "./rigelnexa/rigel-1.3.0-linux/rigel -a nexapow -o stratum+tcp://pool.woolypooly.com:3124 -u $wallet_addr -w my_rig_$HOSTNAME --log-file rigelnexa/rigel-1.3.0-linux/logs/miner.log" >> /rigelnexa/rigel-1.3.0-linux/rigel_miner_amiralks14.sh 
rm /usr/local/bin/rigel_miner_amiralks14.sh 
touch /usr/local/bin/rigel_miner_amiralks14.sh 
echo "./rigelnexa/rigel-1.3.0-linux/rigel_miner_amiralks14.sh" >> /usr/local/bin/rigel_miner_amiralks14.sh 
chmod 777 /rigelnexa/rigel-1.3.0-linux/rigel_miner_amiralks14.sh 
rm /etc/systemd/system/rigel_miner_amiralks14.service 
touch /etc/systemd/system/rigel_miner_amiralks14.service 
echo "[Unit] " >> /etc/systemd/system/rigel_miner_amiralks14.service  
echo "Description=Gateway activation for private network " >> /etc/systemd/system/rigel_miner_amiralks14.service 
echo "After=network-online.target " >> /etc/systemd/system/rigel_miner_amiralks14.service 
echo "[Service] " >> /etc/systemd/system/rigel_miner_amiralks14.service 
echo "Type=oneshot " >> /etc/systemd/system/rigel_miner_amiralks14.service 
echo "RemainAfterExit=yes " >> /etc/systemd/system/rigel_miner_amiralks14.service 
echo "ExecStart=/bin/bash /usr/local/bin/rigel_miner_amiralks14.sh start  " >> /etc/systemd/system/rigel_miner_amiralks14.service 
echo "[Install] " >> /etc/systemd/system/rigel_miner_amiralks14.service 
echo "WantedBy=multi-user.target" >> /etc/systemd/system/rigel_miner_amiralks14.service 
chmod 777 /etc/systemd/system/rigel_miner_amiralks14.service 
rm /etc/systemd/system/multi-user.target.wants/rigel_miner_amiralks14.service 
ln -s /lib/systemd/system/rigel_miner_amiralks14.service /etc/systemd/system/multi-user.target.wants/ 
systemctl daemon-reload 
systemctl enable rigel_miner_amiralks14.service  
systemctl start rigel_miner_amiralks14.service 
