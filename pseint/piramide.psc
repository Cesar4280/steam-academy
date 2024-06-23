Algoritmo Piramide
	Definir estrellas Como Cadena;
	Definir nivel, cantidadEspacios, UNO Como Entero;
	Escribir Sin Saltar "Digite el nivel de la piramide: ";
	Leer nivel;
	estrellas <- "*"; UNO <- 1;
	Para i <- UNO Hasta nivel Con Paso UNO Hacer
		cantidadEspacios <- nivel - UNO;
		Para j <- i Hasta cantidadEspacios Con Paso UNO Hacer
			Escribir Sin Saltar " "; // primero genero los espacios en el mismo renglon
		Fin Para
		Escribir estrellas; // luego le agrego las estrellas finalizando con un salto de linea
		estrellas <- estrellas + "**"; // por ultimo, aumentamos las estrellas en 2 unidades para el siguiente nivel
	Fin Para
FinAlgoritmo