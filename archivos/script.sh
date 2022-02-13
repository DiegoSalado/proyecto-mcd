echo "Para iniciar la descarga de los datos presione ENTER"
read holder
curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip
echo "Descomprimiendo datos..."
unzip datos_abiertos_covid19.zip
echo "Para obtener la información de los casos positivos del estado de Zacatecas presione ENTER"
read holder
csvgrep -c ENTIDAD_RES -m 32 220212COVID19MEXICO.csv > DataZac.csv
csvgrep -c 36 -m 1 DataZac.csv > positivosZac.csv
csvgrep -c 36 -m 2 DataZac.csv >> positivosZac.csv
csvgrep -c 36 -m 3 DataZac.csv >> positivosZac.csv
echo "Listo! Los datos se encuantran en el archivo:"
ls positivosZac.csv