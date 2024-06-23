Algoritmo PiramideSinConcatenarCadena
	Definir i, j, nivelPiramide, cantidadElementosAgregar, cantidadEstrellasDobles Como Entero;
	Definir elemento Como Cadena;
	Escribir Sin Saltar "Digite el nivel de la piramide: ";
	Leer nivelPiramide;
	cantidadEstrellasDobles <- 0;
	Para i <- 1 Hasta nivelPiramide Con Paso 1 Hacer
		cantidadElementosAgregar <- nivelPiramide + cantidadEstrellasDobles; // se compone de espacios y asteriscos según el nivel
		Para j <- i Hasta cantidadElementosAgregar Con Paso 1 Hacer
			Si j < nivelPiramide Entonces elemento <- " "; // agregar espacios al inicio
			SiNo Si j = nivelPiramide Entonces elemento <- "*"; SiNo elemento <- "**"; Fin Si; Fin Si // agregar los asteriscos
			Escribir Sin Saltar elemento; // imprimimos en la misma linea el elemento bien sea un espacio o asteriscos
		Fin Para
		elemento <- ""; cantidadEstrellasDobles <- cantidadEstrellasDobles + 1;
		Escribir elemento; // por ultimo, generamos un salto de linea para dar ese efecto de escalera descendente
	Fin Para
FinAlgoritmo