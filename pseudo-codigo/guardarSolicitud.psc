Funcion ok <- datosCorrectos ( datos )
	Si no (existeSolicitud y existeViaje) y (existeMetodoPago y existeCliente)Entonces
		ok<-Verdadero
	SiNo
		ok<-Falso
	Fin Si
Fin Funcion
//guarda los datos de la solicitud. Es necesario validar que los datos sean coherentes al esquema planteado en los diagramas, 
//comprobar que no este registrada y verificar que las llaves foraneas si referencien a un objeto existente (si las tiene)
Funcion  guardarDatosSolicitud ( datos )
	ok <- datosCorrectos(datos)
	Si  ok Entonces
		Escribir "Solicitud guardada"
	SiNo
		escribir "datos incorrectos, por favor revise"
	Fin Si
Fin Funcion



Algoritmo guardarSolicitud
	Definir datos como cadena
	Escribir "Ingrese los datos de la solicitud"
	Leer datos
	guardarDatosSolicitud(datos)
	
FinAlgoritmo
