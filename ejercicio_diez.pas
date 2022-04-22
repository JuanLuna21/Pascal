
Program ejercicio_diez;



{suponiendo la existencia de una pila "MODELO" que no este vacia, eliminar de la pila "DADA" todos los elementos que sean iguales al tope de la pila "MODELO".}

{$INCLUDE/IntroProg/Estructu}

Var MODELO,DADA,auxiliar,auxiliar2:   pila;

Begin

    readpila(DADA);
    inicpila(MODELO,'2');
    inicpila(auxiliar,'');


    While Not pilavacia(DADA)  Do
        Begin
            If tope(DADA) = tope(MODELO) Then
                Begin
                    apilar(auxiliar, desapilar(DADA));
                End
            Else
                Begin
                    apilar(auxiliar2,desapilar(DADA));
                End;
        End;

    While Not pilavacia(auxiliar2) Do
        Begin
            apilar(DADA,desapilar(auxiliar2));
        End;

    writepila(DADA);
End.
