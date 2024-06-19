Algoritmo DetectorDeNumeroNaturalPalindromo
	Definir natural, divisor, invertido Como Entero;
	Escribir "Digite un número natural:"
	Leer natural;
	invertido <- 0;
	divisor <- natural;
	Mientras divisor > 0 Hacer
		residuo <- divisor MOD 10;
		divisor <- trunc(divisor / 10);
		invertido <- invertido * 10 + residuo;
 	Fin Mientras
	Escribir "¿El número ", natural, " es palindromo? ", natural == invertido;
FinAlgoritmo