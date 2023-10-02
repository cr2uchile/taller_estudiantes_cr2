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
## 2.1 Descarga de datos

Acceda a la carpeta en donde se encuentre el proyecto, en la carpeta raíz abra una terminal y ejecute:


```shell
cd data/maunaloa/
```

Posteriormente descargue los datos de concentraciones de $CO_{2}$
