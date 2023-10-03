# Instrucciones

Para poder obtener los resultados mostrados en el taller debe seguir una serie de pasos listados a continuación:

# 1. Descarga del repositorio

Para poder generar una copia del repositorio en su entorno local puede realizarlo de diversas formas, una de ellas es abriendo una terminal puede clonar el repositorio con el siguiente comando:

```shell
git clone
```

La otra forma es presionando el botón <>code</>( en verde en la esquina superior derecha) y puede descargar todo el repositorio en fomrato *.zip* y almacenarlo en su entorno local.

# 2. Configuración del entorno virtual

Es necesario instalar una serie de librerías para obtener las figuras y resultados generados en el taller, para ello se debe crear un entorno virtual con anaconda:

```shell
conda create -n taller_cr2
```

Posteriormente deberá activar el taller:

```shell
conda activate taller_cr2
```

Para poder instalar las liberias necesarias ejecute los siguientes comandos **Importante: Se deben ejecutar los comandos en el orden indicado a continuación:**

```shell
conda install -c conda-forge cartopy
conda install -c conda-forge xarray dask netCDF4 bottleneck
conda install -c anaconda seaborn
```

# 3. Series de tiempo de Mauna Loa
## 3.1 Descarga de datos

Acceda a la carpeta en donde se encuentre el proyecto, en la carpeta raíz abra una terminal y ejecute:


```shell
cd data/maunaloa/
```

Posteriormente descargue los datos de concentraciones de $CO_{2}$ con el siguiente comando:

```shell
wget https://gml.noaa.gov/webdata/ccgg/trends/co2/co2_mm_mlo.txt
```

Con ello ya puede leer los datos y realizar figuras presentes en el código **ejemplo_1.ipynb**

**Dependiendo del editor de texto en donde sea ejecutado el código puede ser necesario instalar librerías extras o seleccionar el entorno virtual de anaconda de forma manual.**

# 4. Reanálisis ERA5 
## 4.1 Descarga de datos

En la carpeta raíz del proyecto abra una terminal y ejecute:


```shell
cd data/era5/
```

Al interior de la carpeta encontrará el código *download_data_era5.py* el cual permitirá descargar datos provenientes del reanálisis **era5**, antes de ejecutar el código es necesario realizar crear una cuenta en los servicios de **copernicus** se sugiere revisar el siguiente [tutorial](https://www.youtube.com/watch?v=AmF1nn7o6Hc) donde se muestra el paso a paso para descargar los datos de reanálisis ocupando Python, posteriormente al realizar la configuración ejecute:

```python
python download_data_era5.py
```
La descarga de los datos debería tomar un par de minutos.

