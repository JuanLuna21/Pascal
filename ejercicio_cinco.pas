
Program ejercicio_cinco;

{Escrito de vuelta codigo del ejercicio 5 funcionando.}

{$INCLUDE/IntroProg/Estructu}

Var Origen,Distinto,auxiliar:   pila;

Begin


    inicpila(origen);
    inicpila(Distinto,'');
    inicpila(auxiliar,'');

    While Not pilavacia(origen) And tope(origen) <> 5 Do
        Begin
            apilar(Distintos,desapilar(origen));
        End;

End.
