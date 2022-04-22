
Program ejercicio_siete;



{Supongo la existencia de una pila LIMITE, paso los elementos de la pila DADA que sean mayores o iguales que el tope de LIMITE a la pila MAYORES, y los elementos que sean menores a la pila MENORES.}

{$INCLUDE/IntroProg/Estructu}

Var LIMITE,DADA,MAYORES,MENORES:   pila;

Begin
    inicpila(LIMITE,'3');
    inicpila(DADA,'5 6 7 8 2 1');
    inicpila(MAYORES,'');
    inicpila(MENORES,'');

    While Not pilavacia(DADA) Do
        Begin
            If tope(DADA) >= tope(LIMITE) Then
                apilar(MAYORES, desapilar(DADA))
            Else
                apilar(MENORES, desapilar(DADA));
        End;

    writeln('Pila MAYORES: ');
    writepila(MAYORES);
    writeln('Pila MENORES: ');
    writepila(MENORES);
    writeln('Pila DADA: ');
    writepila(DADA);
End.
