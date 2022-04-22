
Program ejercicio_cuatro;



{Este programa carga desde teclado una pila "DADA" y pasa a la pila "DISTINTOS" todos aquellos distintos del valor 8. Los elementos iguales a 8 deben quedarse en pila "DADA".}

{$INCLUDE/IntroProg/Estructu}

Var DADA,DISTINTOS,AUXILIAR:   pila;

Begin

    readpila(DADA);
    inicpila(DISTINTOS,'');
    inicpila(Auxiliar,'');

    While Not pilavacia(DADA) Do
        Begin
            If tope(DADA) <> 8 Then
                apilar(DISTINTOS, desapilar(DADA))
            Else
                apilar(AUXILIAR, desapilar(DADA));
        End;

    While Not pilavacia(AUXILIAR) Do
        Begin
            apilar(DADA, desapilar(AUXILIAR))
        End;

    writepila(DADA);
    writepila(DISTINTOS);
End.
