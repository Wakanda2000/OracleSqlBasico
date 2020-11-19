/* Creacion de un nuevo usuario sin prefijo antes de nuestro nombre  */
alter session set "ORACLE_SCRIPT" = true;
create user Michael identified by contrasenia;
grant dba to Michael;

/*Crear tabla*/

create table persona(
    identificacion int,
    nombre VARCHAR(50),
    telefono int,
    direccion varchar(50)
);

/*Insertar Registros*/

insert into persona values(1, 'Michael Mero', 555, 'Manta');
insert into persona values(2, 'Joel Anton', 555, 'Manta');
insert into persona values(3, 'Hola Mundo', 555, 'Manta');

/*Mostara todos los registros existentes*/
select *from persona;

/*Eliminara un registro establecido*/
delete from persona where  identificacion = 2;

/*Actualizara un registro establecido*/
update persona set nombre = 'Hola Mundo' where identificacion = 1;

/*Buscara un registro estabelcido*/
select *from persona where identificacion = 2;

/*Eliminara nuestar base de datos*/
drop table persona;
