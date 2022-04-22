
Program ejercicio_seis;

{Escrito de vuelta codigo del ejercicio 6, funcionando.}

{$INCLUDE/IntroProg/Estructu}

Var dada,auxtope,auxiliar:   pila;

Begin
    inicpila(dada,'5 6 7');
    inicpila(auxtope,'');
    inicpila(auxiliar,'');

    apilar(auxtope,desapilar(dada));
    While Not pilavacia(dada) Do
        Begin
            apilar(auxiliar,desapilar(dada));
        End;

    apilar(dada,desapilar(auxtope));
    While Not pilavacia(auxiliar) Do
        Begin
            apilar(dada,desapilar(auxiliar));
        End;
    writepila(DADA);
End.
