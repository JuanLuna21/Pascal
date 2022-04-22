program ejercicio_ocho_uno;
 
{modificar el ejercicio 8 para cargar desde el teclado la pila ORIGEN y que la invierta, es decir, que quede ORIGEN con los mismos elementos pero invertidos.} 

{$INCLUDE/IntroProg/Estructu}

var ORIGEN,auxiliar,auxiliar2:pila;

begin

    readpila(ORIGEN);
    inicpila(auxiliar,'');
    inicpila(auxiliar2,'');
    
    while not pilavacia(ORIGEN)  do begin
            apilar(auxiliar, desapilar(ORIGEN));
    end;
    
    while not pilavacia(auxiliar) do begin
            apilar(auxiliar2, desapilar(auxiliar));
    end;        
    
     while not pilavacia(auxiliar2) do begin
            apilar(ORIGEN, desapilar(auxiliar2));
    end;   

writepila(ORIGEN);
end.