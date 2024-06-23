Algoritmo SumaDigitos
	Definir number, divisor, acumulator, reverse, remainder Como Entero;
	Escribir Sin Saltar "Digite un número: ";
	Leer number;
	acumulator <- 0; divisor <- number; remainder <- acumulator; reverse <- acumulator;
	Mientras divisor > 0 Hacer
		remainder <- divisor Mod 10; // 123 / 10 = R{3} - D{12}  ->  12 / 10 = R{2} - D{1}  ->  1 / 10 =  R{1} - D{0}
		reverse <- reverse * 10 + remainder; // 0 * 10 + (3) = [3] ° 3 * 10 + (2) = [32] ° 32 * 10 + (1) - [321]
		acumulator <- acumulator +  remainder; // (0) + 3 = [3] -> (3) + 2 = [5] -> (5) + 1 = [6]
		divisor <- Trunc(divisor / 10); // divisor { 12 -> 1 -> 0 }
	Fin Mientras
	Escribir "La suma de los digitos es: ", acumulator;
	Escribir "¿Dicho número es palindrome? ", number = reverse;
FinAlgoritmo