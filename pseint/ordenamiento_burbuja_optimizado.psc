Algoritmo ordenamientoBurbujaOptimizado
	Definir vector, cantidad, indice, posicionActual, posicionSiguiente, numeroActual, numeroSiguiente, ultimoIntercambio, limite, UNO Como Entero;
	Definir esteOrdenado Como Logico;
	Escribir Sin Saltar "Ingresa el tamaño del vector: ";
	Leer cantidad;
	Dimension vector[cantidad];
	UNO <- 1;
	Para indice <- UNO Hasta cantidad Con Paso UNO Hacer
		Escribir Sin Saltar indice, ". Digita un número: ";
		Leer vector[indice];
	Fin Para
	indice <- UNO; limite <- cantidad - UNO;
	Repetir
		esteOrdenado <- Verdadero; ultimoIntercambio <- 0;
		Para posicionActual <- UNO Hasta limite Con Paso UNO Hacer
			numeroActual <- vector[posicionActual];                            
			posicionSiguiente <- posicionActual + UNO;
			numeroSiguiente <- vector[posicionSiguiente]
			Escribir numeroSiguiente, " < ", numeroActual;
			Si numeroSiguiente < numeroActual Entonces
				vector[posicionActual] <- numeroSiguiente;
				vector[posicionSiguiente] <- numeroActual;
				esteOrdenado <- Falso;
				ultimoIntercambio <- posicionActual;
			Fin Si
			Escribir "***Fin Ciclo N°", indice,"***";
			indice <- indice + UNO;
		Fin Para
		limite <- ultimoIntercambio - UNO;
		Escribir esteOrdenado;
	Hasta Que esteOrdenado;
	Para indice <- UNO Hasta cantidad Con Paso UNO Hacer
		Escribir Sin Saltar vector[indice] " ";
	Fin Para
	Escribir "";
FinAlgoritmo