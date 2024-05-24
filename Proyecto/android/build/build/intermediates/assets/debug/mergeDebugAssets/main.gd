extends Node3D

var puntaje=0
@onready var ui=get_tree().get_nodes_in_group("UI")
@onready var startb=$start/start
@onready var quitb=$start/quit
@onready var credb=$start/Creditos
@onready var volverb=$start/volver
@onready var start=$start
@onready var comp=$Control
@onready var player=$Player
@onready var musica=$musica

@onready var avanzarb=$Control/Avanzar
@onready var retrob=$Control/Retroceder
@onready var derb=$Control/Derecha
@onready var izqb=$Control/Izquierda
@onready var gderb=$"Control/Giro derecha"
@onready var gizqb=$"Control/Giro izquierda"
@onready var interb=$Control/Button
@onready var puntos=$puntaje
@onready var textx=$start/Label2
# Called when the node enters the scene tree for the first time.
func _ready():
	musica.play()
	var interface = XRServer.find_interface("Native mobile")
	if interface and interface.initialize():
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		get_viewport().xr = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func startgame():
	pass

func gameover():
	player.global_position=Vector3.ZERO
	desactivar_start()
	activar_ui()
	pass

func _on_salida_body_entered(body):
	get_tree().quit()
	gameover()
	pass # Replace with function body.

func _on_tela_mosquitos_puntos():
	puntaje+=1
	puntos.text=puntaje
	pass # Replace with function body.

func _on_cubeta_puntos():
	puntaje+=1
	puntos.text=puntaje
	pass # Replace with function body.

func _on_tuberia_puntos():
	puntaje+=1
	puntos.text=puntaje
	pass # Replace with function body.

func _on_tuberia_2_puntos():
	puntaje+=1
	puntos.text=puntaje
	pass # Replace with function body.


func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_start_pressed():
	desactivar_start()
	
	activar_ui()
	pass # Replace with function body.

func activar_start():
	start.visible=true
	startb.visible=true
	quitb.visible=true
	credb.visible=true
	volverb.visible=true
	pass
func desactivar_start():
	start.visible=false
	startb.visible=false
	quitb.visible=false
	credb.visible=false
	volverb.visible=false

func activar_ui():
	comp.visible=true
	avanzarb.visible=true
	retrob.visible=true
	derb.visible=true
	izqb.visible=true
	gderb.visible=true
	gizqb.visible=true
	interb.visible=true
	
func desactivar_ui():
	comp.visible=false
	avanzarb.visible=false
	retrob.visible=false
	derb.visible=false
	izqb.visible=false
	gderb.visible=false
	gizqb.visible=false
	interb.visible=false
	pass


func _on_salida_area_entered(area):
	puntos.visible=true
	
	gameover()
	pass # Replace with function body.


func _on_creditos_pressed():
	startb.visible=false
	quitb.visible=false
	credb.visible=false
	volverb.visible=true
	textx.visible=true
	
	pass # Replace with function body.


func _on_volver_pressed():
	startb.visible=true
	quitb.visible=true
	credb.visible=true
	volverb.visible=false
	textx.visible=false
	pass # Replace with function body.
