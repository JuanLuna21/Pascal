
Program ejercicio_nueve;



{realice un programa para pasar el ultimo elemento(base) de la pila DADA a su primer posicion(tope), dejando los restantes elementos en el mismo orden.}

{$INCLUDE/IntroProg/Estructu}

Var DADA,auxiliar,auxiliar2:   pila;

Begin

    readpila(DADA);
    inicpila(auxiliar,'');
    inicpila(auxiliar2,'');


    While Not pilavacia(DADA)  Do
        Begin
            apilar(auxiliar, desapilar(DADA));
        End;

    apilar(auxiliar2, desapilar(auxiliar));

    While Not pilavacia(auxiliar) Do
        Begin
            apilar(DADA,desapilar(auxiliar));
        End;

    While Not pilavacia(auxiliar2) Do
        Begin
            apilar(DADA,desapilar(auxiliar2));
        End;


    writepila(DADA);
End.
