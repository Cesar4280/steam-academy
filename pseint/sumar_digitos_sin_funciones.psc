Algoritmo SumaDigitosDeNumero
	// Definición de variables
	Definir numeroNatural, parteEntera, residuo, suma, invertido Como Entero;
	Definir division, parteDecimal Como Real;
	// Lectura de datos
	Escribir Sin Saltar "Digite un número natural: ";
	Leer numeroNatural;
	// incialización de variable(s)
	parteEntera <- numeroNatural; suma <- 0; residuo <- suma; invertido <- suma;
	// Ciclo repetitivo - { calculo(s), actualizar variable(s) de la condición  }
	Mientras parteEntera > 0 Hacer    			// 123 > 0 = VERDADERO
		residuo <- parteEntera Mod 10;  			// 123 % 10 = 3
		division <- parteEntera / 10;   			// 123 / 10 = 12,3
		parteDecimal <- residuo / 10;	    	//  3  / 10 = 0,3
		suma <- suma + residuo;                  // 0 + 3 = 3
		invertido <- invertido * 10 + residuo;   // 0 * 10 + 3 = 3
		parteEntera <- division - parteDecimal;  // 12,3 - 0,3 = 12
	Fin Mientras
	// Imprimir resultados
	Escribir "La suma de los digitos del número ", numeroNatural, " es ", suma;
	Escribir "El número invertido sería ", invertido;
	Escribir "Por ende, es ", numeroNatural = invertido, " decir que el número ", numeroNatural, " es Palíndromo";
FinAlgoritmo