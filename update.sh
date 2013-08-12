#!/bin/bash

if [ $# -eq 2 ]; then
	echo -e "Se va a hacer commit y push del siguiente fichero:\n$1\nComantario: $2"
	git add $1
	git commit -m  "$2"
	git push heroku master
	git push origin master
else
	echo "Es necesario pasar como argumentos el nombre del fichero y el comentario"
fi
