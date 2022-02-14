echo "Para iniciar la descarga de los datos presione ENTER"
read holder
curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip
echo "Descomprimiendo datos..."
unzip datos_abiertos_covid19.zip
echo "Para obtener la información de los casos positivos del estado de Zacatecas presione ENTER"
read holder
csvgrep -c ENTIDAD_RES -m 32 220212COVID19MEXICO.csv | csvgrep -c 36 -r "([1-3])" > positivos.csv
csvcut -C 1,2,3,7,17,19,20,31,32,33,34,35,37,38,39 positivos.csv > positivosZac.csv
rm 220212COVID19MEXICO.csv positivos.csv
echo "Listo! Los datos se encuantran en el archivo:"
ls positivosZac.csv
