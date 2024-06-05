Algoritmo MayorDeTresNumerosSinRepeticion
	Definir num1, num2, num3 Como Real;
	Escribir "Ingrese El Primer N�mero: ";
	Leer num1;
	Mientras num1 <= 0 Hacer
		Escribir "El n�mero tiene que ser positivo";
		Escribir "Vuelva a Ingresar el Primer N�mero: ";
		Leer num1;
	Fin Mientras
	Escribir "Ingrese El Segundo N�mero: ";
	leer num2;
	Mientras num2 <= 0 O num1 == num2 Hacer
		Si num2 <= 0 Entonces
			Escribir "El n�mero tiene que ser positivo";
		SiNo
			Escribir "El Segundo N�mero No Puede Ser El Mismo que el Primero.";
		Fin Si
		Escribir "Vuelva a Ingresar el Segundo N�mero: ";
		Leer num2;
	Fin Mientras
	Escribir "Ingrese El Tercer N�mero: ";
	leer num3;
	Mientras num3 <= 0 O num1 == num3 O num2 == num3 Hacer
		Si num3 <= 0 Entonces
			Escribir "El n�mero tiene que ser positivo";
		SiNo
			Escribir "El Tercer N�mero No Puede Ser Igual a los Anteriores.";
		Fin Si
		Escribir "Vuelva a Ingresar el Tercer N�mero: ";
		Leer num3;
	Fin Mientras
	Borrar Pantalla;
	Si num1 > num2 Y num1 > num3 Entonces
		Escribir "El num1=", num1, " Es El MAYOR!";
	SiNo
		Si num2 > num1 Y num2 > num3 Entonces
			Escribir "El num2=", num2, " Es El MAYOR!";
		SiNo
			Escribir "El num3=", num3, " Es El MAYOR!";
		Fin Si
	Fin Si
FinAlgoritmo
