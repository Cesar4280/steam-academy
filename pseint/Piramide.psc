Algoritmo Piramide
	Definir n, e Como Entero;
	Definir stars Como Cadena;
	Escribir "Digite nivel de la piramide";
	Leer n;
	stars <- "*"; spaces <- "";
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Para j <- i Hasta n - 1 Con Paso 1 Hacer
			spaces <- spaces + " "
		Fin Para
		Escribir spaces, stars;
		spaces <- "";
		stars <- stars + "**"
	Fin Para
FinAlgoritmo