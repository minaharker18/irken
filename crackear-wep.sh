echo "Mac ap: ";
read MAC_AP;
echo $MAC_AP;
echo "Nombre de archivo .cap: ";
read FILE_C;
echo $FILE_C;
aircrack-ng -z -b $MAC_AP $FILE_C; 
