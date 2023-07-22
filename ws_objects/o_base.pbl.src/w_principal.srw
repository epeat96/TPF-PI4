$PBExportHeader$w_principal.srw
forward
global type w_principal from window
end type
end forward

global type w_principal from window
integer width = 3378
integer height = 1484
boolean titlebar = true
string title = "Sistema de Prog4"
string menuname = "m_principal"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
end type
global w_principal w_principal

on w_principal.create
if this.MenuName = "m_principal" then this.MenuID = create m_principal
end on

on w_principal.destroy
if IsValid(MenuID) then destroy(MenuID)
end on

event open;title = "Nombre del programa: " + this.classname()
end event

event close;DISCONNECT;
end event

