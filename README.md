# benchmark1.0

Este proyecto proporciona un script en bash para realizar pruebas de rendimiento del CPU y la memoria en sistemas Linux basados en Debian. Utilizando `sysbench`, el script permite al usuario seleccionar y ejecutar fácilmente pruebas de rendimiento, y muestra los resultados de una manera clara y colorida.

## Características

- Prueba de rendimiento del CPU calculando números primos.
- Prueba de rendimiento de la memoria mediante operaciones de escritura.
- Salida de resultados con colores para una mejor legibilidad.
- Fácil de usar con opciones interactivas.

## Dependencias

Para ejecutar el script `benchmark1.0.sh`, necesitas tener instaladas las siguientes dependencias en tu sistema:

- `sysbench`
- `git`

### Instalación de Dependencias

1. **Actualizar la lista de paquetes:**
   ```sh
   sudo apt update
   ```

2. **Instalar `sysbench` y `git`:**
   ```sh
   sudo apt install sysbench git -y
   ```

## Uso

Sigue estos pasos para clonar el repositorio y ejecutar el script de benchmark:

1. **Clonar el repositorio desde GitHub:**
   ```sh
   git clone https://github.com/WalidUsEr/benchmark1.0.git
   cd benchmark1.0
   ```

2. **Dar permisos de ejecución al script:**
   ```sh
   chmod +x benchmark1.0.sh
   ```

3. **Ejecutar el script:**
   ```sh
   ./benchmark1.0.sh
   ```

### Ejecución del Script

1. **Al ejecutar el script, verás el siguiente menú:**

   ```plaintext
   Selecciona la prueba de rendimiento que deseas ejecutar:
   1) CPU
   2) Memoria
   ```

   ![Menú de selección](https://path_to_image/image1.png)

2. **Selecciona la opción deseada ingresando el número correspondiente:**

   - Para ejecutar la prueba de CPU, ingresa `1` y presiona `Enter`.
     ![Prueba de CPU](https://path_to_image/image2.png)

   - Para ejecutar la prueba de Memoria, ingresa `2` y presiona `Enter`.
     ![Prueba de Memoria](https://path_to_image/image3.png)

3. **El script limpiará la pantalla y ejecutará la prueba seleccionada, mostrando los resultados de manera clara y colorida.**

   - **Resultados de la prueba de CPU:**
     ![Resultados de la CPU](https://path_to_image/image4.png)

   - **Resultados de la prueba de Memoria:**
     ![Resultados de la Memoria](https://path_to_image/image5.png)

## Notas

- Este script está diseñado para funcionar en distribuciones de Linux basadas en Debian, como Ubuntu y Debian.
- Asegúrate de tener permisos de administrador para instalar `sysbench` y `git` si no los tienes instalados.
- Para cualquier problema o sugerencia, por favor abre un issue en el repositorio de GitHub.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.

---

Con esta guía rápida, deberías poder instalar y ejecutar el script `benchmark1.0.sh` sin problemas. Si necesitas más ayuda, no dudes en consultar la documentación adicional en el repositorio de GitHub.
```

### Pasos para subir el archivo `README.md` a GitHub

1. **Clona tu repositorio si aún no lo has hecho:**
   ```sh
   git clone https://github.com/WalidUsEr/benchmark1.0.git
   cd benchmark1.0
   ```

2. **Crea el archivo `README.md`:**
   ```sh
   nano README.md
   ```

3. **Copia y pega el contenido proporcionado en el archivo `README.md` y guarda el archivo.**

4. **Agrega y haz commit del archivo `README.md`:**
   ```sh
   git add README.md
   git commit -m "Añadir manual de uso rápido"
   ```

5. **Sube los cambios al repositorio remoto:**
   ```sh
   git push origin main
   ```
