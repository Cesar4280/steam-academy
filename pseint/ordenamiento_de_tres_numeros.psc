Algoritmo OrdenamientoDeTresNumeros
	Definir INICIO_DE_SOLICITUD, FIN_DE_SOLICITUD, SEPARADOR, REPETIDO Como Caracter; // constantes
	Definir N1, N2, N3 Como Entero; // solo lectura
	INICIO_DE_SOLICITUD <- "Digite el ";
	FIN_DE_SOLICITUD <- " número: ";
	SEPARADOR <- ", ";
	REPETIDO <- " repetido";
	Escribir INICIO_DE_SOLICITUD, "primer", FIN_DE_SOLICITUD;
	Leer N1;
	Escribir INICIO_DE_SOLICITUD, "segundo", FIN_DE_SOLICITUD;
	Leer N2;
	Escribir INICIO_DE_SOLICITUD, "tercer", FIN_DE_SOLICITUD;
	Leer N3;
	Si N1 = N2 Y N1 = N3 Entonces
		Escribir a, REPETIDO, " 3 veces";
	SiNo // puede que a lo mucho un número este repetido
		Si N1 <= N2 Y N1 <= N3 Entonces // N1 es el menor
			Si N1 = N2 O N1 = N3 Entonces // N1 está repetido en la secuencia
				Si N1 = N2 Entonces // buscar donde se repite N1
					Escribir N1, REPETIDO, SEPARADOR, N3; // N1 y N2 son los menores repetidos
				SiNo
					Escribir N1, REPETIDO, SEPARADOR, N2; // N1 y N3 son los menores repetidos
				Fin Si
			SiNo // saber si hay repetidos mayores o ninguno
				Si N2 = N3 Entonces // N2 y N3 son los mayores repetidos
					Escribir N1, SEPARADOR, N2, REPETIDO;
				SiNo // N1, N2 y N3 son números diferentes
					Si N2 < N3 Entonces // buscar el siguiente menor
						Escribir N1, SEPARADOR, N2, SEPARADOR, N3; // siendo N3 el mayor
					SiNo
						Escribir N1, SEPARADOR, N2, SEPARADOR, N3; // siendo N2 el mayor 
					Fin Si
				Fin Si
			Fin Si
		SiNo
			Si N1 >= N2 Y N2 <= N3 Entonces // N2 es el menor
				Si N1 = N2 O N2 = N3 Entonces // N2 está repetido en la secuencia
					Si N1 = N2 Entonces // buscar donde se repite N2
						Escribir N1, REPETIDO, SEPARADOR, N3; // N1 y N2 son los menores repetidos
					SiNo
						Escribir N2, REPETIDO, SEPARADOR, N1; // N2 y N3 son los menores repetidos
					Fin Si
				SiNo // saber si hay repetidos mayores o ninguno
					Si N1 = N3 Entonces // N1 y N3 son los mayores repetidos
						Escribir N2, SEPARADOR, N1, REPETIDO;
					SiNo // N1, N2 y N3 son números diferentes
						Si N1 < N3 Entonces // buscar el siguiente menor
							Escribir N2, SEPARADOR, N1, SEPARADOR, N3; // siendo N3 el mayor
						SiNo
							Escribir N2, SEPARADOR, N3, SEPARADOR, N1; // siendo N1 el mayor 
						Fin Si
					Fin Si
				Fin Si
			SiNo // N3 es el menor
				Si N1 = N3 O N2 = N3 Entonces // N3 está repetido en la secuencia
					Si N1 = N3 Entonces // buscar donde se repite N3
						Escribir N1, REPETIDO, SEPARADOR, N2; // N1 y N3 son los menores repetidos
					SiNo
						Escribir N2, REPETIDO, SEPARADOR, N1; // N2 y N3 son los menores repetidos
					Fin Si
				SiNo // saber si hay repetidos mayores o ninguno
					Si N1 = N2 Entonces // N1 y N2 son los mayores repetidos
						Escribir N3, SEPARADOR, N1, REPETIDO;
					SiNo // N1, N2 y N3 son números diferentes
						Si N1 < N2 Entonces // buscar el siguiente menor
							Escribir N3, SEPARADOR, N1, SEPARADOR, N2; // siendo N2 el mayor
						SiNo
							Escribir N3, SEPARADOR, N2, SEPARADOR, N1; // siendo N1 el mayor 
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo