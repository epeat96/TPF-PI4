$PBExportHeader$w_abm_tipos_documentos.srw
forward
global type w_abm_tipos_documentos from w_abm_base
end type
type st_1 from statictext within w_abm_tipos_documentos
end type
end forward

global type w_abm_tipos_documentos from w_abm_base
integer width = 2802
integer height = 948
boolean minbox = false
boolean maxbox = false
boolean resizable = false
st_1 st_1
end type
global w_abm_tipos_documentos w_abm_tipos_documentos

on w_abm_tipos_documentos.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_abm_tipos_documentos.destroy
call super::destroy
destroy(this.st_1)
end on

type dw_datos from w_abm_base`dw_datos within w_abm_tipos_documentos
integer width = 2583
integer height = 352
string dataobject = "dw_abm_tipos_documentos"
end type

type cb_salir from w_abm_base`cb_salir within w_abm_tipos_documentos
integer x = 2021
integer y = 596
end type

type cb_cancelar from w_abm_base`cb_cancelar within w_abm_tipos_documentos
integer x = 1184
integer y = 596
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_tipos_documentos
integer x = 603
integer y = 596
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_tipos_documentos
integer x = 64
integer y = 596
end type

type st_1 from statictext within w_abm_tipos_documentos
integer x = 69
integer y = 20
integer width = 727
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "TIPOS DE DOCUMENTOS"
boolean focusrectangle = false
end type

