Algoritmo SumaDigitosDeNumero
	// Definici�n de variables
	Definir numeroNatural, parteEntera, residuo, suma, invertido Como Entero;
	Definir division, parteDecimal Como Real;
	// Lectura de datos
	Escribir Sin Saltar "Digite un n�mero natural: ";
	Leer numeroNatural;
	// incializaci�n de variable(s)
	parteEntera <- numeroNatural; suma <- 0; residuo <- suma; invertido <- suma;
	// Ciclo repetitivo - { calculo(s), actualizar variable(s) de la condici�n  }
	Mientras parteEntera > 0 Hacer    			// 123 > 0 = VERDADERO
		residuo <- parteEntera Mod 10;  			// 123 % 10 = 3
		division <- parteEntera / 10;   			// 123 / 10 = 12,3
		parteDecimal <- residuo / 10;	    	//  3  / 10 = 0,3
		suma <- suma + residuo;                  // 0 + 3 = 3
		invertido <- invertido * 10 + residuo;   // 0 * 10 + 3 = 3
		parteEntera <- division - parteDecimal;  // 12,3 - 0,3 = 12
	Fin Mientras
	// Imprimir resultados
	Escribir "La suma de los digitos del n�mero ", numeroNatural, " es ", suma;
	Escribir "El n�mero invertido ser�a ", invertido;
	Escribir "Por ende, es ", numeroNatural = invertido, " decir que el n�mero ", numeroNatural, " es Pal�ndromo";
FinAlgoritmo