$PBExportHeader$liquidacionsalario.sra
$PBExportComments$Generated Application Object
forward
global type liquidacionsalario from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type liquidacionsalario from application
string appname = "liquidacionsalario"
string appruntimeversion = "19.2.0.2703"
end type
global liquidacionsalario liquidacionsalario

on liquidacionsalario.create
appname = "liquidacionsalario"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on liquidacionsalario.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

