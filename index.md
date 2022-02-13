## Proyecto: Análisis Covid-19

Este repositorio es parte de la actividad *Descargando y analizando los datos de COVID* del curso propedéutico de **Herramientas de productividad par la Ciencia de Datos** por parte de la Universidad de Sonora.

En este proyecto se realizó un análisis de los datos de la Secretaria de Salud sobre pruebas de Covid-19.
Para dicho trabajo se utilizó unicamente la información correspondiente a los casos positivos del estado de Zacatecas.

```markdown

```

### Implementación

Para obtener los datos utilizados en este trabajo es necesario descargar el contenido de la carpeta [***archivos/***] (https://github.com/DiegoSalado/proyecto-mcd/tree/main/archivos) en la cual se encuentra un Dockerfile y un script de shell. Una vez con estos archivos descargados en la misma dirección, es necesario crear un conteneodr usando el Dockerfile.
```   
$ docker build -t username/bash-curso .
```
El Dockerfile capiará el script shell dentro del nuevo contenedor basado en ubuntu, este script automáticamnete relizará las siguientes acciones:

- Descargar las actualizacones y progrmas necesarios para la obtención y limpieza de los datos.
- Descarar la base de datos sobre Covid-19 de los [Datos Abiertos Dirección General de Epidemiología](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
- Generar un documento *positivosZac.csv* que contiene unicamente los datos correspondientes a casos positivos del estado de Zacatecas. 



