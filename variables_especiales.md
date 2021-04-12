# Comandos
```https://devhints.io/bash```
# Parametros

Parámetros de posición que hacen referencia al primer, segundo, tercer, etc. parámetro pasado al script.
```$1, $2, $3, ...```
```$_``` El último argumento pasado al último comando ejecutado (justo después de arrancar la shell, este valor guarda la ruta absoluta del comando que inicio la shell).
```$#``` Número total de argumentos pasados al script actual.
```$*``` La lista completa de argumentos pasados al script. Esta valor es una cadena de texto.
```$@```, la lista completa de argumentos pasados al script. Esta valor es una lista.
```$-```, la lista de opciones de la shell actual.
```$$```, el PID de la shell actual.
```$IFS```, el separador utilizado para delimitar los campos.
```$?```, el código de salida del pipe más reciente (es decir, de la última vez que se encadenaron varios comandos mediante el carácter pipe que se escribe como |).
```$!```, el PID del último comando ejecutado en segundo plano.
```$0```, el nombre de la shell o del script de shell.
```$?```, devuelve el estado del último comando ejecutado.