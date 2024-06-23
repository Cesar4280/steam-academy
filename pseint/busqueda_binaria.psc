Algoritmo BusquedaBinaria
	Definir vector, cantidad, indice, iterador, inferior, mitad, superior, objetivo Como Entero;
	Definir exista Como Logico;
	Definir lista Como Caracter;
	// Definiendo la longitud del arreglo
	Escribir Sin Saltar "Digite el tamaño del vector: ";
	Leer cantidad;
	// Inicializando arreglo númerico de longitud fija
	Dimension vector[cantidad];
	// Asignamos los limites del arreglo a variables
	inferior <- 1; superior <- cantidad;
	// Lectura de datos del arreglo
	Para indice <- inferior Hasta superior Con Paso inferior Hacer
		Si indice = inferior Entonces
			Escribir Sin Saltar "Digite un número: ";
			Leer vector[indice];
			lista <- "Vector: [" + ConvertirATexto(vector[indice]);
		SiNo
			// Apartir del segundo dato debemos comprobar que no haya sido ingresado con anterioridad
			Repetir
				Escribir Sin Saltar "Digite otro número: ";
				Leer vector[indice];
				// verificamos dicho dato con los números previamente insertados
				superior <- indice - inferior;
				Para iterador <- inferior Hasta superior Con Paso inferior Hacer
					Si vector[iterador] = vector[indice] Entonces
						Escribir "*** Deben ser valores unicos! ***";
						Escribir "El número ", vector[indice], " ya fue ingresado en la posición ", iterador, " del vector";
						Escribir Sin Saltar "Por favor! "
						iterador <- indice + inferior;
					Fin Si
				Fin Para
			Hasta Que iterador = indice;
			lista <- lista + ", " + ConvertirATexto(vector[indice]);
		Fin Si
	Fin Para
	lista <- lista + "]";
	Escribir lista;
	// Ordenamiento Ascendente por el Metodo de Inserción
	superior <- cantidad;
	Para indice <- inferior Hasta superior Con Paso inferior Hacer
		iterador <- indice; objetivo <- vector[indice];
		Mientras iterador > inferior Y objetivo < vector[iterador - inferior] Hacer
			vector[iterador] <- vector[iterador - inferior];
			iterador <- iterador - inferior;
		Fin Mientras
		vector[iterador] <- objetivo;
	Fin Para
	// Imprimir arreglo ordenado
	lista <- "Vector: [" + ConvertirATexto(vector[1]);
	Para indice <- 2 Hasta superior Con Paso inferior Hacer
		lista <- lista + ", " + ConvertirATexto(vector[indice]);
	Fin Para
	lista <- lista + "]";
	Escribir lista;
	// Busqueda binaria
	
	Escribir Sin Saltar "Digite el número a consultar: ";
	Leer objetivo;
	inferior <- 1; superior <- cantidad; mitad <- trunc((inferior + superior) / 2);
	Mientras vector[mitad] <> objetivo Y inferior <= superior Hacer
		Si vector[mitad] < objetivo Entonces
			superior <- mitad;
		SiNo
			inferior <- mitad;
		Fin Si
		mitad <- trunc((inferior + superior) / 2);
	Fin Mientras
	Escribir "¿El número ", objetivo, " se encontró? ", vector[mitad] = objetivo;
FinAlgoritmo