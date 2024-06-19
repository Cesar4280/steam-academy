Algoritmo SumaVectores
	Definir longitudVectores, indice Como Entero;
	Definir primerVectorCadena, segundoVectorCadena, vectorSumaCadena Como Caracter;
	primerVectorCadena <- " ";
	segundoVectorCadena <- primerVectorCadena;
	vectorSumaCadena <- primerVectorCadena;
	Escribir "Dimensión de los vectores:";
	Leer longitudVectores;
	Dimension primerVector[longitudVectores];
	Dimension segundoVector[longitudVectores];
	Dimension vectorSuma[longitudVectores];
	Escribir "*** Definición De Los Vectores ***"
	Para indice <- 1 Hasta longitudVectores Con Paso 1 Hacer
		Escribir "Número para la posición V1[", indice, "]:"
		Leer primerVector[indice];
		primerVectorCadena <- primerVectorCadena + ConvertirATexto(primerVector[indice]) + " ";
		Escribir "Número para la posición V2[", indice, "]:"
		Leer segundoVector[indice];
		segundoVectorCadena <- segundoVectorCadena + ConvertirATexto(segundoVector[indice]) + " ";
		vectorSuma[indice] <- primerVector[indice] + segundoVector[indice];
		vectorSumaCadena <- vectorSumaCadena + ConvertirATexto(vectorSuma[indice]) + " ";
	Fin Para
	Escribir "*** Reporte Final ***"
	Escribir "V1 = {", primerVectorCadena, "}";
	Escribir "V2 = {", segundoVectorCadena, "}";
	Escribir "V1 + V2 = {", vectorSumaCadena, "}";
FinAlgoritmo