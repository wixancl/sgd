####################### Archivo para borrar ####################### 
read -rp $'Desea Borrar los Archvos Generados (Y/n):' -ei $'Y' key;  
 echo $key
rm ../app/guido.php
rm ../app/Http/Controllers/GuidoController.php
rm ../database/migrations/2020_03_18_092510_create_guidos_table.php
rm -rf ../resources/views/guido
 echo "Borrado de Entorno $nombre  > $(date +%y%m%d)_$(date +%H%M) " >> log/log.txt 
 sed -i 's/\/\/ Rutas prueba/ /g' ../routes/web.php 
rm guido.sh
