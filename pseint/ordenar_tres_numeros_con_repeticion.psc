Algoritmo OrdenarTresNumerosConRepeticion
	//  Declaramos la cadena de texto que tendrá el formato de salida
	Definir salida Como Cadena;
    // Declaramos las variables para almacenar los tres números y asignar su orden
    Definir num1, num2, num3, menorNum, medio, mayorNum Como Entero;
    // Solicitar los números al usuario
    Escribir "Ingrese el primer número: ";
    Leer num1;
    Escribir "Ingrese el segundo número: ";
    Leer num2;
    Escribir "Ingrese el tercer número: ";
    Leer num3;
    // Determinar el orden de los números
    Si num1 <= num2 y num1 <= num3 Entonces
        menorNum = num1
        Si num2 <= num3 Entonces
            medio = num2
            mayorNum = num3
        SiNo
            medio = num3
            mayorNum = num2
        FinSi
    SiNo
        Si num2 <= num1 y num2 <= num3 Entonces
            menorNum = num2
            Si num1 <= num3 Entonces
                medio = num1
                mayorNum = num3
            SiNo
                medio = num3
                mayorNum = num1
            FinSi
        SiNo
            menorNum = num3
            Si num1 <= num2 Entonces
                medio = num1
                mayorNum = num2
            SiNo
                medio = num2
                mayorNum = num1
            FinSi
        FinSi
    FinSi
    // Crear la cadena de salida con la información de repetidos
    // Almacenamos el primer número
	salida = ConvertirATexto(menorNum);
	// Verificamos el segundo número en relación con el primero
	Si menorNum = medio Entonces // si es el mismo entonces está repetido
		salida = salida + " repetido";
	SiNo // sino agregamos el segúndo número
		salida = salida + ", " + ConvertirATexto(medio);
        Si medio = mayorNum Entonces // ahora veremos si este ultimo se repite
            salida = salida + " repetido"; // de ser asi, decimos que esta repetido
        FinSi
	Fin Si
	// Verificamos que el ultimo número no haya sido ingresado con anterioridad
    Si mayorNum <> menorNum Y mayorNum <> medio Entonces
		// anexamos el ultimo número
        salida = salida + ", " + ConvertirATexto(mayorNum);
    FinSi
    // Imprimir la salida final
    Escribir "Los números ordenados son: ", salida;
FinAlgoritmo