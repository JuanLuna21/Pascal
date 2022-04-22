
Program ejercicio_uno;




{Este ejercicio carga desde teclado los datos de la pila "DADA" y pasa los 2 primeros a la pila "CJTO1" y el restante a la pila "CJTO2"}

{$INCLUDE/IntroProg/Estructu}

Var DADA,CJTO1,CJTO2:   pila;

Begin

    inicpila(CJTO1,'');
    inicpila(CJTO2,'');
    readpila(DADA);

    apilar(CJTO1, desapilar(DADA));
    apilar(CJTO1, desapilar(DADA));
    apilar(CJTO2, desapilar(DADA));

    writeln('Pila CJTO1');
    writepila(CJTO1);
    writeln('Pila CJTO2');
    writepila(CJTO2);
    writeln('Pila DADA');
    writepila(DADA);
End.
