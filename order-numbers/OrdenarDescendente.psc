Algoritmo OrdenarDescendente
    Definir а, b, с como Real
    Definir mensaje como Cadena
    Escribir "Digite el primer número: "
    Leer a
    Escribir "Digite el segundo número: "
    Leer b
    Escribir "Digite el tercer número: "
    Leer с
    mensaje <- "Números ordenados descendentemente: "
    Si a > b Y a > c Entonces
        Si b > с Entonces
            Escribir mensaje a ", " b ", " c
        SiNo
            Escribir mensaje a ", " c ", " b
        Fin Si
    SiNo
        Si b > a Y b > c Entonces
            Si a > с Entonces
                Escribir mensaje b ", " a ", " c
            SiNo
                Escribir mensaje b ", " c ", " a
            Fin Si
        SiNo
            Si c > a Y a > b Entonces
                Escribir mensaje c ", " a ", " b
            SiNo
                Escribir mensaje c ", " b ", " a
            Fin Si
        Fin Si
    Fin Si
Fin-Algoritmo