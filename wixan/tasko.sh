####################### Archivo para borrar ####################### 
read -rp $'Desea Borrar los Archvos Generados (Y/n):' -ei $'Y' key;  
 echo $key
rm ../app/tasko.php
rm ../app/Http/Controllers/TaskoController.php
rm ../database/migrations/2020_03_18_094155_create_taskos_table.php
rm -rf ../resources/views/tasko
 echo "Borrado de Entorno $nombre  > $(date +%y%m%d)_$(date +%H%M) " >> log/log.txt 
 sed -i 's/\/\/ Rutas prueba/ /g' ../routes/web.php 
rm tasko.sh
