Algoritmo OrdenarTresNumerosConRepeticion
	//  Declaramos la cadena de texto que tendr� el formato de salida
	Definir salida Como Cadena;
    // Declaramos las variables para almacenar los tres n�meros y asignar su orden
    Definir num1, num2, num3, menorNum, medio, mayorNum Como Entero;
    // Solicitar los n�meros al usuario
    Escribir "Ingrese el primer n�mero: ";
    Leer num1;
    Escribir "Ingrese el segundo n�mero: ";
    Leer num2;
    Escribir "Ingrese el tercer n�mero: ";
    Leer num3;
    // Determinar el orden de los n�meros
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
    // Crear la cadena de salida con la informaci�n de repetidos
    // Almacenamos el primer n�mero
	salida = ConvertirATexto(menorNum);
	// Verificamos el segundo n�mero en relaci�n con el primero
	Si menorNum = medio Entonces // si es el mismo entonces est� repetido
		salida = salida + " repetido";
	SiNo // sino agregamos el seg�ndo n�mero
		salida = salida + ", " + ConvertirATexto(medio);
        Si medio = mayorNum Entonces // ahora veremos si este ultimo se repite
            salida = salida + " repetido"; // de ser asi, decimos que esta repetido
        FinSi
	Fin Si
	// Verificamos que el ultimo n�mero no haya sido ingresado con anterioridad
    Si mayorNum <> menorNum Y mayorNum <> medio Entonces
		// anexamos el ultimo n�mero
        salida = salida + ", " + ConvertirATexto(mayorNum);
    FinSi
    // Imprimir la salida final
    Escribir "Los n�meros ordenados son: ", salida;
FinAlgoritmo