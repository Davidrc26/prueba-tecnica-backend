#Numero de personas que han consultado vuelos mayores a un valor de 5000000

SELECT DISTINCT
    COUNT(idCliente)
FROM
    solicitud
WHERE
    idViaje IN (SELECT 
            idViaje
        FROM
            solicitud s
                INNER JOIN
            viaje v
        WHERE
            s.idViaje = v.idViaje
                AND v.precio > 5000000);


#Personas que han tomado los vuelos y han hecho el pago en efectivo

SELECT 
    nombre
FROM
    cliente c
        INNER JOIN
    solicitud s
WHERE
    c.idCliente = s.idCliente
        AND s.idSolicitud IN (SELECT 
            idSolicitud
        FROM
            checkIn
        WHERE
            estado = TRUE
                AND idMetodoPago IN (SELECT 
                    mp.idMetodoPago
                FROM
                    metodoPago mp,
                    checkIn ck
                WHERE
                    mp.idMetodoPago = ck.idMetodoPago
                        AND mp.nombre = 'efectivo'));
                        


#Personas mayores de 40 años que viven en la ciudad de Bogotá

SELECT 
    nombre, apellido, edad, c1.nombre
FROM
    cliente c
        INNER JOIN
    ciudad c1 ON c.idCiudad = c1.idCiudad
WHERE
    edad > 40 AND c1.nombre = 'bogota';
    
    
#Listar los tipos de viajes turisticos y de negocios que se han hecho con pago con tarjeta de credito


SELECT 
    *
FROM
    viaje
WHERE
    tipo IN ('turistico' , 'negocios')
        AND idViaje IN (SELECT 
            idViaje
        FROM
            solicitud s,
            checkIn ck
        WHERE
            s.idSolicitud = ck.idSolicitud
                AND ck.idMetodoPago IN (SELECT 
                    idMetodoPago
                FROM
                    metodoPago
                WHERE
                    nombre = 'tarjeta'));
                    
                    
#Listar los viajes activos y cancelados
SELECT 
    *
FROM
    viaje
WHERE
    estado IN (1 , 2)
                    



