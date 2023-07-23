/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     7/23/2023 5:38:17 PM                         */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_BARRIOS_REFERENCE_CIUDADES') then
    alter table BARRIOS
       delete foreign key FK_BARRIOS_REFERENCE_CIUDADES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CIUDADES_REFERENCE_DEPARTAM') then
    alter table CIUDADES
       delete foreign key FK_CIUDADES_REFERENCE_DEPARTAM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DEPARTAM_REFERENCE_PAISES') then
    alter table DEPARTAMENTOS
       delete foreign key FK_DEPARTAM_REFERENCE_PAISES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMAILS_E_REFERENCE_EMPLEADO') then
    alter table EMAILS_EMPLEADOS
       delete foreign key FK_EMAILS_E_REFERENCE_EMPLEADO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_BARRIOS') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_BARRIOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_DEPARTAM') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_DEPARTAM
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_CIUDADES') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_CIUDADES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_TIPOS_DO') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_TIPOS_DO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_PAISES') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_PAISES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_PROFESIO') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_PROFESIO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_AREAS') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_AREAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_CARGOS') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_CARGOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_CIUDADES2') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_CIUDADES2
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_REFERENCE_DEPARTAM2') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_REFERENCE_DEPARTAM2
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HIJOS_REFERENCE_EMPLEADO') then
    alter table HIJOS
       delete foreign key FK_HIJOS_REFERENCE_EMPLEADO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIQUIDAC_REFERENCE_EMPLEADO') then
    alter table LIQUIDACIONES
       delete foreign key FK_LIQUIDAC_REFERENCE_EMPLEADO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIQUIDAC_REFERENCE_CONCEPTO') then
    alter table LIQUIDACIONES_DETALLES
       delete foreign key FK_LIQUIDAC_REFERENCE_CONCEPTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIQUIDAC_REFERENCE_LIQUIDAC') then
    alter table LIQUIDACIONES_DETALLES
       delete foreign key FK_LIQUIDAC_REFERENCE_LIQUIDAC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SALARIOS_REFERENCE_AREAS') then
    alter table SALARIOS_EMPLEADOS
       delete foreign key FK_SALARIOS_REFERENCE_AREAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SALARIOS_REFERENCE_CARGOS') then
    alter table SALARIOS_EMPLEADOS
       delete foreign key FK_SALARIOS_REFERENCE_CARGOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SALARIOS_REFERENCE_EMPLEADO') then
    alter table SALARIOS_EMPLEADOS
       delete foreign key FK_SALARIOS_REFERENCE_EMPLEADO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SALARIOS_REFERENCE_MOTIVOS') then
    alter table SALARIOS_EMPLEADOS
       delete foreign key FK_SALARIOS_REFERENCE_MOTIVOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TELEFONO_REFERENCE_EMPLEADO') then
    alter table TELEFONOS_EMPLEADOS
       delete foreign key FK_TELEFONO_REFERENCE_EMPLEADO
end if;

if exists(
   select 1 from sys.systable 
   where table_name='AREAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table AREAS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='BARRIOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table BARRIOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CARGOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CARGOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CIUDADES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CIUDADES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CONCEPTOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CONCEPTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DEPARTAMENTOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DEPARTAMENTOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='DIAS_FESTIVOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table DIAS_FESTIVOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='EMAILS_EMPLEADOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table EMAILS_EMPLEADOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='EMPLEADOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table EMPLEADOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='HIJOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table HIJOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='LIQUIDACIONES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table LIQUIDACIONES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='LIQUIDACIONES_DETALLES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table LIQUIDACIONES_DETALLES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='MOTIVOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table MOTIVOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PAISES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PAISES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PARAMETROS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PARAMETROS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PROFESIONES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PROFESIONES
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SALARIOS_EMPLEADOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SALARIOS_EMPLEADOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TELEFONOS_EMPLEADOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TELEFONOS_EMPLEADOS
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TIPOS_DOCUMENTOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TIPOS_DOCUMENTOS
end if;

if exists(select 1 from sys.sysusertype where type_name='D_BOOLEANO') then
   drop domain D_BOOLEANO
end if;

if exists(select 1 from sys.sysusertype where type_name='D_IDENTIFICADOR') then
   drop domain D_IDENTIFICADOR
end if;

if exists(select 1 from sys.sysusertype where type_name='D_MONTO') then
   drop domain D_MONTO
end if;

if exists(select 1 from sys.sysusertype where type_name='D_NOMBRE') then
   drop domain D_NOMBRE
end if;

/*==============================================================*/
/* Domain: D_BOOLEANO                                           */
/*==============================================================*/
create domain D_BOOLEANO as character 
     check (@column is null or (@column in ('S','N')));

/*==============================================================*/
/* Domain: D_IDENTIFICADOR                                      */
/*==============================================================*/
create domain D_IDENTIFICADOR as integer not null;

/*==============================================================*/
/* Domain: D_MONTO                                              */
/*==============================================================*/
create domain D_MONTO as numeric(12,2);

/*==============================================================*/
/* Domain: D_NOMBRE                                             */
/*==============================================================*/
create domain D_NOMBRE as varchar(150);

/*==============================================================*/
/* Table: AREAS                                                 */
/*==============================================================*/
create table AREAS 
(
   AREA                 D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       not null,
   constraint PK_AREAS primary key clustered (AREA)
);

comment on table AREAS is 
'En esta tabla se guardan las diferentes areas ( departamentos ) de la empresa.
Ej: Contabilidad, Compras, Ventas, etc.';

/*==============================================================*/
/* Table: BARRIOS                                               */
/*==============================================================*/
create table BARRIOS 
(
   BARRIO               D_IDENTIFICADOR                not null,
   CIUDAD               D_IDENTIFICADOR                null,
   NOMBRE               D_NOMBRE                       null,
   constraint PK_BARRIOS primary key clustered (BARRIO)
);

/*==============================================================*/
/* Table: CARGOS                                                */
/*==============================================================*/
create table CARGOS 
(
   CARGO                D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       not null,
   constraint PK_CARGOS primary key clustered (CARGO)
);

comment on table CARGOS is 
'En esta tabla se guardan los diferentes cargos que un empleado puede tener dentro de las areas.
Ej: Encargado, Gerente, Administrador, etc.';

/*==============================================================*/
/* Table: CIUDADES                                              */
/*==============================================================*/
create table CIUDADES 
(
   CIUDAD               D_IDENTIFICADOR                not null,
   DEPARTAMENTO         D_IDENTIFICADOR                null,
   NOMBRE               D_NOMBRE                       null,
   constraint PK_CIUDADES primary key clustered (CIUDAD)
);

/*==============================================================*/
/* Table: CONCEPTOS                                             */
/*==============================================================*/
create table CONCEPTOS 
(
   CONCEPTO             D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       not null,
   TIPO                 character                      not null default 'M'
      constraint CKC_TIPO_CONCEPTO check (TIPO in ('A','M')),
   APLICA_IPS           D_BOOLEANO                     not null,
   APLICA_AGUINALDO     D_BOOLEANO                     not null,
   constraint PK_CONCEPTOS primary key clustered (CONCEPTO)
);

comment on column CONCEPTOS.TIPO is 
'En esta columna se registra si es de tipo automatico ( A ) o de tipo manual ( M ).';

comment on column CONCEPTOS.APLICA_IPS is 
'Este es un campo booleano ( verdadero/falso ) en el que se especifica si el concepto aplica o no a ips ( aumenta o reduce la cantidad a pagar tanto por el empleado como el empleador )';

comment on column CONCEPTOS.APLICA_AGUINALDO is 
'Este campo es un booleano ( verdadero/falso ) que indica si el concepto suma o resta al calculo del aguinaldo del empleado';

/*==============================================================*/
/* Table: DEPARTAMENTOS                                         */
/*==============================================================*/
create table DEPARTAMENTOS 
(
   DEPARTAMENTO         D_IDENTIFICADOR                not null,
   PAIS                 D_IDENTIFICADOR                null,
   NOMBRE               D_NOMBRE                       null,
   constraint PK_DEPARTAMENTOS primary key clustered (DEPARTAMENTO)
);

/*==============================================================*/
/* Table: DIAS_FESTIVOS                                         */
/*==============================================================*/
create table DIAS_FESTIVOS 
(
   NOMBRE               D_NOMBRE                       null,
   FECHA                date                           not null,
   constraint PK_DIAS_FESTIVOS primary key clustered (FECHA)
);

/*==============================================================*/
/* Table: EMAILS_EMPLEADOS                                      */
/*==============================================================*/
create table EMAILS_EMPLEADOS 
(
   EMAIL                varchar(255)                   not null,
   LEGAJO               varchar(100)                   null,
   PRIORIDAD            integer                        not null,
   constraint PK_EMAILS_EMPLEADOS primary key clustered (EMAIL)
);

comment on table EMAILS_EMPLEADOS is 
'En esta tabla se guardan los correos de los empleados, con un campo que identifica cual es el principal asi como el orden de prioridad de los mismos';

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS 
(
   LEGAJO               varchar(100)                   not null,
   NOMBRE               D_NOMBRE                       not null,
   APELLIDO             D_NOMBRE                       not null,
   FECHA_NACIMIENTO     date                           not null,
   DIRECCION            varchar(250)                   not null,
   NUMERO_DOMICILIO     varchar(10)                    null,
   NUMERO_PISO          varchar(10)                    null,
   NUMERO_DEPARTAMENTO  varchar(10)                    null,
   BARRIO_RESIDENCIA    D_IDENTIFICADOR                null,
   CIUDAD_RESIDENCIA    D_IDENTIFICADOR                null,
   DEPARTAMENTO_RESIDENCIA D_IDENTIFICADOR                null,
   PAIS_NACIMIENTO      D_IDENTIFICADOR                null,
   DEPARTAMENTO_NACIMIENTO D_IDENTIFICADOR                null,
   CIUDAD_NACIMIENTO    D_IDENTIFICADOR                null,
   NUMERO_DOCUMENTO     varchar(80)                    not null,
   TIPO_DOCUMENTO       D_IDENTIFICADOR                null,
   SALARIO_INICIAL      D_MONTO                        null,
   FECHA_INCORPORACION  date                           null,
   FECHA_SALIDA         date                           null,
   PROFESION            D_IDENTIFICADOR                null,
   AREA_ACTUAL          D_IDENTIFICADOR                null,
   CARGO_ACTUAL         D_IDENTIFICADOR                null,
   SALARIO_ACTUAL       D_MONTO                        null,
   constraint PK_EMPLEADOS primary key clustered (LEGAJO)
);

/*==============================================================*/
/* Table: HIJOS                                                 */
/*==============================================================*/
create table HIJOS 
(
   HIJO                 D_IDENTIFICADOR                not null,
   LEGAJO               varchar(100)                   null,
   NOMBRE               D_NOMBRE                       null,
   APELLIDO             D_NOMBRE                       not null,
   FECHA_NACIMIENTO     date                           null,
   constraint PK_HIJOS primary key clustered (HIJO)
);

/*==============================================================*/
/* Table: LIQUIDACIONES                                         */
/*==============================================================*/
create table LIQUIDACIONES 
(
   LIQUIDACION          D_IDENTIFICADOR                not null,
   LEGAJO               varchar(100)                   not null,
   MONTO_TOTAL          D_MONTO                        null,
   FECHA_INICIAL        date                           null,
   FECHA_FINAL          date                           null,
   FECHA_PAGO           date                           null,
   MONTO_IPS_PATRONAL   D_MONTO                        null,
   MONTO_IPS_OBRERO     D_MONTO                        null,
   TOTAL_AGUINALDO      D_MONTO                        null,
   BONIFICACION_FAMILIAR D_MONTO                        null,
   ACTIVO               character                      null default 'S'
      constraint CKC_ACTIVO_LIQUIDAC check (ACTIVO is null or (ACTIVO in ('S','N'))),
   constraint PK_LIQUIDACIONES primary key clustered (LIQUIDACION)
);

comment on column LIQUIDACIONES.BONIFICACION_FAMILIAR is 
'En esta columna se guarda del total a recibir por un empleado en concepto de bonificacion familiar';

/*==============================================================*/
/* Table: LIQUIDACIONES_DETALLES                                */
/*==============================================================*/
create table LIQUIDACIONES_DETALLES 
(
   LIQUIDACION          D_IDENTIFICADOR                not null,
   CONCEPTO             D_IDENTIFICADOR                not null,
   MONTO                D_MONTO                        not null,
   SIGNO                character                      null
      constraint CKC_SIGNO_LIQUIDAC check (SIGNO is null or (SIGNO in ('S','R'))),
   FECHA                date                           not null,
   constraint PK_LIQUIDACIONES_DETALLES primary key clustered (LIQUIDACION, CONCEPTO)
);

comment on column LIQUIDACIONES_DETALLES.SIGNO is 
'Indica si el concepto es de Suma o Resta';

/*==============================================================*/
/* Table: MOTIVOS                                               */
/*==============================================================*/
create table MOTIVOS 
(
   MOTIVO               D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       null,
   constraint PK_MOTIVOS primary key clustered (MOTIVO)
);

comment on table MOTIVOS is 
'Esta tabla guarda los motivos por los cuales se da por finalizada una entrada del historial de salario de un empleado. 
Ejemplo: Aumento, Desvinculacion, etc.';

/*==============================================================*/
/* Table: PAISES                                                */
/*==============================================================*/
create table PAISES 
(
   PAIS                 D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       not null,
   constraint PK_PAISES primary key clustered (PAIS)
);

/*==============================================================*/
/* Table: PARAMETROS                                            */
/*==============================================================*/
create table PARAMETROS 
(
   PARAMETRO            D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       null,
   VALOR                D_NOMBRE                       null,
   COMENTARIO           varchar(255)                   null,
   constraint PK_PARAMETROS primary key clustered (PARAMETRO)
);

comment on table PARAMETROS is 
'En esta tabla se guardan todos los "parametros" de configuracion del sistema que pueden cambiar en el tiempo.
Ej: Salario minimo, monto de bonificacion familiar';

/*==============================================================*/
/* Table: PROFESIONES                                           */
/*==============================================================*/
create table PROFESIONES 
(
   PROFESION            D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       null,
   constraint PK_PROFESIONES primary key clustered (PROFESION)
);

/*==============================================================*/
/* Table: SALARIOS_EMPLEADOS                                    */
/*==============================================================*/
create table SALARIOS_EMPLEADOS 
(
   SALARIO              D_IDENTIFICADOR                not null,
   LEGAJO               varchar(100)                   not null,
   AREA                 D_IDENTIFICADOR                not null,
   CARGO                D_IDENTIFICADOR                not null,
   MONTO                D_MONTO                        not null,
   FECHA_INICIO         date                           null,
   FECHA_FIN            date                           null,
   MOTIVO               D_IDENTIFICADOR                null,
   constraint PK_SALARIOS_EMPLEADOS primary key clustered (SALARIO, LEGAJO)
);

comment on table SALARIOS_EMPLEADOS is 
'En esta tabla se guardan los historiales de salario de los empleados ( incluyendo area y cargo ).';

/*==============================================================*/
/* Table: TELEFONOS_EMPLEADOS                                   */
/*==============================================================*/
create table TELEFONOS_EMPLEADOS 
(
   NUMERO               varchar(12)                    not null,
   LEGAJO               varchar(100)                   not null,
   PRIORIDAD            D_IDENTIFICADOR                not null,
   constraint PK_TELEFONOS_EMPLEADOS primary key clustered (NUMERO)
);

comment on table TELEFONOS_EMPLEADOS is 
'En esta tabla se guardan los numeros de telefono de los empleados, con un campo que identifica cual es el principal asi como el orden de prioridad de los mismos';

/*==============================================================*/
/* Table: TIPOS_DOCUMENTOS                                      */
/*==============================================================*/
create table TIPOS_DOCUMENTOS 
(
   TIPO_DOCUMENTO       D_IDENTIFICADOR                not null,
   NOMBRE               D_NOMBRE                       not null,
   constraint PK_TIPOS_DOCUMENTOS primary key clustered (TIPO_DOCUMENTO)
);

alter table BARRIOS
   add constraint FK_BARRIOS_REFERENCE_CIUDADES foreign key (CIUDAD)
      references CIUDADES (CIUDAD)
      on update restrict
      on delete cascade;

alter table CIUDADES
   add constraint FK_CIUDADES_REFERENCE_DEPARTAM foreign key (DEPARTAMENTO)
      references DEPARTAMENTOS (DEPARTAMENTO)
      on update restrict
      on delete cascade;

alter table DEPARTAMENTOS
   add constraint FK_DEPARTAM_REFERENCE_PAISES foreign key (PAIS)
      references PAISES (PAIS)
      on update restrict
      on delete cascade;

alter table EMAILS_EMPLEADOS
   add constraint FK_EMAILS_E_REFERENCE_EMPLEADO foreign key (LEGAJO)
      references EMPLEADOS (LEGAJO)
      on update restrict
      on delete cascade;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_BARRIOS foreign key (BARRIO_RESIDENCIA)
      references BARRIOS (BARRIO)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_DEPARTAM foreign key (DEPARTAMENTO_NACIMIENTO)
      references DEPARTAMENTOS (DEPARTAMENTO)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_CIUDADES foreign key (CIUDAD_NACIMIENTO)
      references CIUDADES (CIUDAD)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_TIPOS_DO foreign key (TIPO_DOCUMENTO)
      references TIPOS_DOCUMENTOS (TIPO_DOCUMENTO)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_PAISES foreign key (PAIS_NACIMIENTO)
      references PAISES (PAIS)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_PROFESIO foreign key (PROFESION)
      references PROFESIONES (PROFESION)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_AREAS foreign key (AREA_ACTUAL)
      references AREAS (AREA)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_CARGOS foreign key (CARGO_ACTUAL)
      references CARGOS (CARGO)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_CIUDADES2 foreign key (CIUDAD_RESIDENCIA)
      references CIUDADES (CIUDAD)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_REFERENCE_DEPARTAM2 foreign key (DEPARTAMENTO_RESIDENCIA)
      references DEPARTAMENTOS (DEPARTAMENTO)
      on update restrict
      on delete restrict;

alter table HIJOS
   add constraint FK_HIJOS_REFERENCE_EMPLEADO foreign key (LEGAJO)
      references EMPLEADOS (LEGAJO)
      on update restrict
      on delete cascade;

alter table LIQUIDACIONES
   add constraint FK_LIQUIDAC_REFERENCE_EMPLEADO foreign key (LEGAJO)
      references EMPLEADOS (LEGAJO)
      on update restrict
      on delete restrict;

alter table LIQUIDACIONES_DETALLES
   add constraint FK_LIQUIDAC_REFERENCE_CONCEPTO foreign key (CONCEPTO)
      references CONCEPTOS (CONCEPTO)
      on update restrict
      on delete restrict;

alter table LIQUIDACIONES_DETALLES
   add constraint FK_LIQUIDAC_REFERENCE_LIQUIDAC foreign key (LIQUIDACION)
      references LIQUIDACIONES (LIQUIDACION)
      on update restrict
      on delete restrict;

alter table SALARIOS_EMPLEADOS
   add constraint FK_SALARIOS_REFERENCE_AREAS foreign key (AREA)
      references AREAS (AREA)
      on update restrict
      on delete restrict;

alter table SALARIOS_EMPLEADOS
   add constraint FK_SALARIOS_REFERENCE_CARGOS foreign key (CARGO)
      references CARGOS (CARGO)
      on update restrict
      on delete restrict;

alter table SALARIOS_EMPLEADOS
   add constraint FK_SALARIOS_REFERENCE_EMPLEADO foreign key (LEGAJO)
      references EMPLEADOS (LEGAJO)
      on update restrict
      on delete cascade;

alter table SALARIOS_EMPLEADOS
   add constraint FK_SALARIOS_REFERENCE_MOTIVOS foreign key (MOTIVO)
      references MOTIVOS (MOTIVO)
      on update restrict
      on delete restrict;

alter table TELEFONOS_EMPLEADOS
   add constraint FK_TELEFONO_REFERENCE_EMPLEADO foreign key (LEGAJO)
      references EMPLEADOS (LEGAJO)
      on update restrict
      on delete cascade;

