connect system/root;
create user PC_Support identified by 123;
grant connect, resource to PC_Support;
connect PC_Support/123;

CREATE TABLE tblusuario (
    usuario varchar(20) NOT NULL  PRIMARY KEY,
    nombre varchar(30) NOT NULL,
    clave varchar(25) NOT NULL,    
    estado varchar(8) NOT NULL ) ; 
	
INSERT INTO tblusuario (usuario,nombre, clave, estado) VALUES 
        ('zamueland','Samuel Andrés Vergara', '123', 'activo');
		
INSERT INTO tblusuario (usuario,nombre, clave, estado) VALUES 
        ('pernett98','Sebastian Pernett Plaza', '456', 'activo');
	
	
CREATE TABLE tblcasos_hw (
	id number NOT NULL PRIMARY KEY,
	caso varchar2(300) NOT NULL,
	solucion varchar2(600) NOT NULL);
	
	CREATE SEQUENCE incremental_hw
	START WITH 1
	INCREMENT BY 1;
	
	
INSERT INTO tblcasos_hw (id,caso,solucion) VALUES 
        (incremental_hw.nextval,'El comptador no enciende.', '1. Verificar la conexion a la electricidad
2. Verificar el interruptor de la fuente de alimentacion
3. Verificar las conexiones internas del equipo');

INSERT INTO tblcasos_hw (id,caso,solucion) VALUES 
        (incremental_hw.nextval,'El computador eciende pero no da imagen.', '1. Verificar la conexion a la electricidad
2. Verificar la conexion del cable que va conectado del computador haci la pantalla
3. Verificar las conexiones internas del equipo');
	
	

CREATE TABLE tblcasos_rds (
	id number NOT NULL PRIMARY KEY,
	caso varchar2(300) NOT NULL,
	solucion varchar2(600) NOT NULL);
	
	CREATE SEQUENCE incremental_rds
	START WITH 1
	INCREMENT BY 1;
	
INSERT INTO tblcasos_rds (id,caso,solucion) VALUES 
        (incremental_rds.nextval,'El comptador no tiene internet.', '1. Verificar la conexion del cable de red
2. Verificar que el adaptador de red este activo
3. Verificar y/o actualizar los drivers');

INSERT INTO tblcasos_rds (id,caso,solucion) VALUES 
        (incremental_rds.nextval,'El comptador tiene internet pero no abre ninguna pagina web.', '1. Verificar la configuracion ip del equipo
2. Verificar que el router este funcionando con normalidad');
	
	
CREATE TABLE tblcasos_sw (
	id number NOT NULL PRIMARY KEY,
	caso varchar2(300) NOT NULL,
	solucion varchar2(600) NOT NULL);
	
	CREATE SEQUENCE incremental_sw
	START WITH 1
	INCREMENT BY 1;
	

INSERT INTO tblcasos_sw (id,caso,solucion) VALUES 
        (incremental_sw.nextval,'No puedo abrir archivos con extension .exe.', '1. Verificar que el equipo tenga el software winrar/7zip o similares ');
	
CREATE TABLE tblcasos_so (
	id number NOT NULL PRIMARY KEY,
	caso varchar2(300) NOT NULL,
	solucion varchar2(600) NOT NULL);
	
	CREATE SEQUENCE incremental_so
	START WITH 1
	INCREMENT BY 1;

INSERT INTO tblcasos_so (id,caso,solucion) VALUES 
        (incremental_so.nextval,'Windows no esta activado', 'compra e ingrasa el codigo de licencia');
	
CREATE TABLE tblsolicitud_casos (
	id number NOT NULL PRIMARY KEY,
	caso varchar2(300) NOT NULL,
	tipo_caso varchar2(20) NOT NULL);	
	
	CREATE SEQUENCE incremental_soli
	START WITH 1
	INCREMENT BY 1;
	
	INSERT INTO tblsolicitud_casos (id,caso,tipo_caso) VALUES 
        (incremental_soli.nextval,'No puedo abrir archivos con extension .iso.', 'SistemaOperativo');
	
	