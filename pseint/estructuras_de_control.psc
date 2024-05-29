Algoritmo SteamAcademy
	Definir x, opcion, multiplicador Como Entero;
	Definir a, b, c Como Real;
	Definir control Como Caracter;
	Repetir
		Escribir "Men� De Opci�n";
		Escribir "Digite una opci�n n�merica valida: ";
		Leer opcion;
		Segun opcion Hacer
			1:
				// Cuadrado
				Escribir "Digite la longitud de un Lado del Cuadrado en Metros: ";
				Leer a;
				Escribir "�rea del Cuadrado: ", (a * a), " m^2";
				// Circulo
				Escribir "Digite la longitud del Radio del Circulo en Metros: ";
				Leer a;
				Escribir "�rea del Circulo: ", (PI * a ^ 2), " m^2";
				// Rectangulo
				Escribir "Digite la longitud de la Base del Rectangulo en Metros: ";
				Leer a;
				Escribir "Digite la longitud de la Altura del Rectangulo en Metros: ";
				Leer b;
				Escribir "�rea del Rectangulo: ", (a * b), " m^2";
				// Rombo
				Escribir "Digite la longitud de la Diagonal Menor del Rombo en Metros: ";
				Leer a;
				Escribir "Digite la longitud de la Diagonal Mayor del Rombo en Metros: ";
				Leer b;
				Escribir "�rea del Rombo: ", a * b / 2, " m^2";
			2:
				// �C -> �F, K
				Escribir "Digite la Temperatura en Grados Celsius: ";
				Leer a;
				Escribir "La Temperatura respectiva en Grados Fahrenheit es de ", a * 1.8 + 32, "�F";
				Escribir "La Temperatura respectiva en Escala Kelvin es de ", a + 273.15, "K";
				// K -> �C, �F
				Escribir "Digite la Temperatura en Escala Kelvin: ";
				Leer a;
				b <- a - 273.15;
				Escribir "La Temperatura respectiva en Grados Celsius es de ", b, "�C";
				Escribir "La Temperatura respectiva en Grados Fahrenheit es de ", b * 1.8 + 32 , "�F";
				// �F -> �C, K
				Escribir "Digite la Temperatura en Grados Fahrenheit: ";
				Leer a;
				b <- (a - 32) * 5 / 9;
				Escribir "La Temperatura respectiva en Grados Celsius es de ", b, "�C";
				Escribir "La Temperatura respectiva en Escala Kelvin es de ", b + 273.15, "K";
			3:
				Escribir "Digite un N�mero Natural Para Saber Si Es Par: ";
				Leer x;
				Escribir "�El N�mero ", x, " Es Par? ", x MOD 2 == 0;
			4:
				Escribir "Digite un a�o en formato YYYY: ";
				Leer x;
				Definir esBisiesto Como Logico;
				
				Si x MOD 4 == 0 Entonces
					Si x MOD 100 == 0 Entonces
						Si x MOD 400 == 0 Entonces
							Escribir "El A�o ", x, " Es Bisiesto";
						SiNo
							Escribir "El A�o ", x, " No Es Bisiesto";
						FinSi
					SiNo
						Escribir "El A�o ", x, " Es Bisiesto";
					FinSi
				SiNo
					Escribir "El A�o ", x, " No Es Bisiesto";
				FinSi
				
				// X % 4 == 0 & X % 100 <> 0
				// X % 100 == 0 & X % 400 == 0
			5:
				Escribir "Digite un N�mero Entero: ";
				Leer a;
				Si a > 0 Entonces
					Escribir "El N�mero ", a, " Es Positivo";
				SiNo
					Si a < 0 Entonces
						Escribir "El N�mero ", a, " Es Negativo";
					SiNo
						Escribir "El N�mero ", a, " Es Considerado Neutro";
					FinSi
				FinSi
			6:
				Escribir "Digite El N�mero A: ";
				Leer a;
				Escribir "Digite El N�mero B: ";
				Leer b;
				Escribir "Digite El N�mero C: ";
				Leer c;
				Si a > b Y a > c Entonces
					Escribir "El N�mero A=", a, " es el Mayor";
				SiNo
					Si b > a Y b > c Entonces
						Escribir "El N�mero B=", b, " es el Mayor";
					SiNo
						Si c > a Y c > b Entonces
							Escribir "El N�mero C=", c, " es el Mayor";
						SiNo
							Si a == b Y a > c Entonces
								Escribir "Los N�meros A=", a, " y B=", b, " son los Mayores";
							SiNo
								Si a == c Y a > b Entonces
									Escribir "Los N�meros A=", a, " y C=", c, " son los Mayores";
								SiNo
									Si b == c Y b > a Entonces
										Escribir "Los N�meros B=", b, " y C=", c, " son los Mayores";
									SiNo
										Escribir "Los N�meros Son Iguales";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			7:
				Escribir "Digite un N�mero Natural Comprendido Entre 1 y 7 Para Determinar el Dia de la Semana: ";
				Leer x;
				Segun x Hacer
					1:
						Escribir "Lunes";
					2:
						Escribir "Martes";
					3:
						Escribir "Miercoles";
					4:
						Escribir "Jueves";
					5:
						Escribir "Viernes";
					6:
						Escribir "Sabado";
					7:
						Escribir "Domingo";
					De Otro Modo:
						Escribir "N�mero ingresado incorrecto";
				FinSegun
			8:
				Escribir "Digite un N�mero Entero Para La Tabla De Multiplicar: ";
				Leer x;
				Para multiplicador <- 1 Hasta 10 Con Paso 1 Hacer
					Escribir x, " x ", multiplicador, " = ", x * multiplicador; 
				FinPara
			9:
				opcion <- 1;
				Escribir "Digite un N�mero Natural o Cero Para Calcular su Factorial: ";
				Leer x;
				Para multiplicador <- x Hasta 1 Con Paso -1 Hacer
					opcion <- opcion * multiplicador;
				FinPara
				Escribir "El Factorial Del N�mero ", x, " Es ", opcion;
			10:
				Repetir
					Escribir "El Programa Termina Cuando Ingrese La Letra (F/f) (caso insensible): ";
					Leer control;
				Hasta Que Minusculas(control) == "f";
			De Otro Modo:
				Escribir "N�mero de opci�n incorrecta";
		FinSegun
		Escribir "Presione (S/Si) Para Regresar Al Men�";
		Leer control;
	Hasta Que Mayusculas(control) <> "SI" Y Mayusculas(control) <> "S";
	Escribir "Proceso Terminado!";
FinAlgoritmo