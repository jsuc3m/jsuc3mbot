JSUC3Mbot
=========
*JSUC3Mbot* es el resultado de la elección entre estudiar cientos de slides aburridas de una asignatura que prefiero nombrar, o ponerse a hacer cosas más divertidas.

Es, o será, una serie de scripts en Node.js para hacer [cosas nazis](http://www.youtube.com/watch?v=jtSkorBcyBU) con el Wiki en Github de JSUC3M, y lo que se nos ocurra.

Está hecho en [Coffeescript](http://coffeescript.org/), que viene siendo Javascript pero más legible (sobre todo con menos dolores de cabeza con los callbacks anidados). Se "traduce" a Javascript con una pequeña utilidad de Node, o se puede ejecutar tal cual (pero acaba siendo Javascript al fin y al cabo). Podéis probarlo en http://js2coffee.org/

### Cosas que hace:
* Utilizando la libreria [gift](https://github.com/sentientwaffle/gift), hace un pull el repositorio donde se almacena el Wiki, cambia una página del mismo (por ahora sólo añade un timestamp y "Hola mundo"), hace un commit con dicho cambio, y un push para subirlo.

### Cosas que puede que acabe haciendo:
* Servir de utilidad para crear páginas de reuniones, cambiarlas en masa, añadir un servidor con un botón que permita añadir fácilmente si vas o no vas, etc, añadiendo algun servidor web con Connect.js
* Twittear! (y por qué no?)
 

### Haciendolo funcionar
* Hace falta tener node.js y npm instalado, tener Github en la organización jsuc3m, y tener las claves SSH configuradas para que git no pida contraseña.
* sudo npm install -g coffee-script
* npm install gift
* git clone git@github.com:jsuc3m/jsuc3mbot.git
* cd jsuc3mbot
* git clone git@github.com:jsuc3m/jsuc3m.github.com.wiki.git
* coffee bot.coffee

Dicho esto, me vuelvo a estudiar.