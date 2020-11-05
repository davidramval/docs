select p.nombres, p.apellidos, p.numero_documento from pasajeros as p
inner join vuelos_por_pasajeros as vxp on p.id = vxp.id_pasajero 
where vxp.id_vuelo = 1;

select v.codigo_avion, v.fecha_salida, p.nombres, p.apellidos, cs.nombre_ciudad, cd.nombre_ciudad
from vuelos as v 
	inner join vuelos_por_pasajeros as vxp on v.id = vxp.id_vuelo
		inner join pasajeros as p on vxp.id_pasajero = p.id 
	inner join ciudades as cs on v.id_ciudad_salida = cs.id
    inner join ciudades as cd on v.id_ciudad_destino = cd.id
where v.id = 2;