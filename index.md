## Proyecto: Análisis Covid-19

Este repositorio es parte de la actividad *Descargando y analizando los datos de COVID* del curso propedéutico de **Herramientas de productividad par la Ciencia de Datos** por parte de la Universidad de Sonora. La finalidad de esta actividad es mostrar el manejo del contenido del curso atrvés del análisis de datos sobre Covid-19 en México.

Los datos usados forman parte de la base de datos de la Secretaria de Salud sobre pruebas de Covid-19.
Para este trabajo se utilizó unicamente la información correspondiente a los casos positivos del estado de Zacatecas. Para el cual se trataron de resolver las siguiente preguintas:

- ¿Qué porcentaje de mujeres y qué porcentaje de hombres facellecen después de ser hospitalizados por Covid-19? ¿Qué porcentaje de mujeres y qué porcentaje de hombres hospitalizados tienen cuando menos una enfermedad de riesgo?

- ¿Qué porcentaje de pacientes facellecen después de ser hospitalizados por Covid-19 en hospitales públicos y que porcentaje en hospitales privados? ¿Qué porcentaje de pacientes hospitalizados por Covid-19 tienen cuanso menos una enfermedad de riesgo en hospitales públicos y que porcentaje en hospitales privados?

### Resultados

### Pregunta 1
53.95% de los hombres han fallecido por Cocid-10 después de hospitalizados, mientres que en las mujeres ha sido un 46.27%. 
![HM](https://github.com/DiegoSalado/proyecto-mcd/blob/main/HM.PNG)

Por otro lado el 80.17% de la mujeres hospitalizadas tienen cuando menos una enfermedad de riesgo, casi 10% más que los hombres con un 72.60%.

![HMR](https://github.com/DiegoSalado/proyecto-mcd/blob/main/HMR.PNG)


### Pregunta 2
30.97% de los pacinetes hospitalizados en servivios privados fallecieron, 16% menos que los hospitalizados hospitalizadas en servicios públicos donde falleció el 46.42%.

![PF](https://github.com/DiegoSalado/proyecto-mcd/blob/main/PF.PNG)

Sin embargo el porcentaje de pacientese que tienen cuando menos una enfermedad de riesgo en estos grupos es casi el mismo, 69.03% en privados y 71.69% en públicos.

![PR](https://github.com/DiegoSalado/proyecto-mcd/blob/main/PR.PNG)

*La obtención de estos datos se encuentren en el notebook [Covid-19.ipynb](https://github.com/DiegoSalado/proyecto-mcd/blob/main/datos/Covid-19.ipynb)*

### Implementación

Para obtener los datos utilizados en este trabajo es necesario descargar el contenido de la carpeta [***archivos/***](https://github.com/DiegoSalado/proyecto-mcd/tree/main/archivos) en la cual se encuentra un Dockerfile y un script de shell. Una vez con estos archivos descargados en la misma dirección, es necesario crear un conteneodr usando el Dockerfile.
```   
$ docker build -t username/bash-curso .
```
El Dockerfile capiará el script shell dentro del nuevo contenedor basado en ubuntu, este script automáticamnete relizará las siguientes acciones:

- Descargar las actualizacones y progrmas necesarios para la obtención y limpieza de los datos.
- Descarar la base de datos sobre Covid-19 de los [Datos Abiertos Dirección General de Epidemiología](https://www.gob.mx/salud/documentos/datos-abiertos-152127).
- Generar un documento *positivosZac.csv* que contiene unicamente los datos correspondientes a casos positivos del estado de Zacatecas. 

