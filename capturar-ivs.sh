ifconfig wlan0 down;
ifconfig mon0 down;
ifconfig mon1 down;
ifconfig mon2 down;
ifconfig mon3 down;
echo "Interface a activar en modo monitor: ";
read INTERFACE;
echo $INTERFACE;
echo "Interface en modo monitor: ";
read INTERFACE_M;
echo $INTERFACE_M;
echo "Iterface a desactivar: "
read INTERFACE_D;
echo $INTERFACE_D;
echo "Channel a utilizar: "
read CHANNEL;
echo $CHANNEL;
echo "bssida a crackear: "
read BSSID;
echo $BSSID;
echo "Nombre del archivo .cap: ";
read ARCHIVO;
echo $ARCHIVO;
airmon-ng start $INTERFACE_M $CHANNEL;
airodump-ng -c $CHANNEL --bssid $BSSID -w $ARCHIVO $INTERFACE_M; 
