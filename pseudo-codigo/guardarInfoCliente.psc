//guarda los datos del cliente. Es necesario validar que los datos sean coherentes al esquema del cliente, 
//comprobar que no este registrado y verificar que las llaves foraneas (si las tiene) si referencien a un objeto existente 
Funcion guardarDatosCliente ( datoscliente )
	Si datosCorrectos Entonces
		Si existeCliente Entonces
			Escribir "cliente ya registrado"
		SiNo
			Escribir "guardando cliente..."
		Fin Si
	SiNo
		escribir "datos incorrectos"
	Fin Si
Fin Funcion

Algoritmo guardar_info_cliente
	Definir datos como cadena
	Escribir "Ingrese los datos del cliente"
	Leer datos
	guardarDatosCliente(datos)
FinAlgoritmo
