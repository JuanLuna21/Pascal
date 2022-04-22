
Program ejercicio_ocho;



{dado una pila "ORIGEN" que se carga desde teclado, y una pila "DESTINO" inicialmente vacia, se pretende pasar los datos de origen a "DESTINO" pero dejandolos en el mismo orden.}

{$INCLUDE/IntroProg/Estructu}

Var ORIGEN,DESTINO,auxiliar:   pila;

Begin

    readpila(ORIGEN);
    inicpila(DESTINO,'');
    inicpila(auxiliar,'');

    While Not pilavacia(ORIGEN)  Do
        Begin
            apilar(auxiliar, desapilar(ORIGEN));
        End;

    While Not pilavacia(auxiliar) Do
        Begin
            apilar(DESTINO, desapilar(auxiliar));
        End;


    writepila(DESTINO);
End.
