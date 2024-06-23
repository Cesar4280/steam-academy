Algoritmo ArbolDeNavidad
	Definir espaciosConEstrellas Como Cadena;
	Definir alturaArbol, cantidadParesEspacioEstrella, UNO Como Entero;
	Escribir Sin Saltar "Digite La Altura Del Arbol Navideño: ";
	Leer alturaArbol;
	UNO <- 1; espaciosConEstrellas <- "*"; // inicialmente vale una estrella
	Para i <- UNO Hasta alturaArbol Con Paso UNO Hacer
		cantidadParesEspacioEstrella <- alturaArbol - UNO;
		Para j <- i Hasta cantidadParesEspacioEstrella Con Paso UNO Hacer
			Escribir Sin Saltar " "; // primero genero los espacios en el mismo renglon
		Fin Para
		Escribir espaciosConEstrellas; // luego le agrego el conjunto par espacio-estrella finalizando con un salto de linea
		espaciosConEstrellas <- espaciosConEstrellas + " *"; // por ultimo, le anexamos un espacio junto a un asterisco
	Fin Para
FinAlgoritmo