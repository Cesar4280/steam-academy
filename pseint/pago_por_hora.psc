Algoritmo PagoPorHora
	Definir horasTrabajadas Como Entero;
	Definir tarifa, salario Como Real;
	Definir mensaje Como Cadena;
	
	mensaje <- "El Salario del Trabajador ";
	
	Escribir "Tarifa Por Hora: ";
	leer tarifa;
	
	Escribir "Horas Trabajadas: ";
	leer horasTrabajadas;
	
	salario <- horasTrabajadas * tarifa;
	
	Si horasTrabajadas > 40 Entonces
		Definir horasExtras Como Entero;
		horasExtras <- horasTrabajadas - 40;
		salario <- tarifa * (40 + horasExtras * 1.5); // (40 * tarifa) + (horasExtras * tarifa * 1.5);
		mensaje <- mensaje + "con horas extras ";
	Fin Si
	
	mensaje <- mensaje + "es de ";
	
	Escribir mensaje, salario;
	
FinAlgoritmo
