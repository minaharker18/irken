echo "Interface a utilizar: ";
read INTERFACE;
echo $INTERFACE;
ifconfig $INTERFACE down;
echo "Interface en modo monitor: ";
read INTERFACE_M;
echo $INTERFACE_M;
airmon-ng start $INTERFACE;
airodump-ng $INTERFACE_M;
