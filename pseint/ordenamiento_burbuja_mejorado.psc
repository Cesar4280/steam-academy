Algoritmo OrdenamientoBurbujaMejorado
	Definir vector, cantidad, i, j, temp, iteracion Como Entero;
	Escribir Sin Saltar "Ingresa el tama�o del vector: ";
	Leer cantidad;
	Dimension vector[cantidad];
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir Sin Saltar i, ". Digita un n�mero: ";
		Leer vector[i];
	Fin Para
	// Algoritmo de burbuja optimizado
	iteracion <- 0;
	Para i <- cantidad - 1 Hasta 1 Con Paso -1 Hacer
		Para j <- 1 Hasta i Con Paso 1 Hacer
			iteracion <- iteracion + 1;
			Si vector[j] > vector[j + 1] Entonces
				temp <- vector[j];
				vector[j] <- vector[j + 1];
				vector[j + 1] <- temp;
			Fin Si
			Escribir "Iteraci�n: ", iteracion;
		Fin Para
		// Escribir "Iteraci�n: ", cantidad - i;
		// Mostrar el vector despu�s de cada iteraci�n
		Para k <- 1 Hasta cantidad Con Paso 1 Hacer
			Escribir Sin Saltar vector[k], " ";
		Fin Para
		Escribir ""; // Salto de l�nea despu�s de mostrar el vector
	Fin Para
	Escribir Sin Saltar "El vector ordenado es: ";
	Para i <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir Sin Saltar vector[i], " ";
	Fin Para
	Escribir ""; // Salto de l�nea despu�s de mostrar el vector
FinAlgoritmo
