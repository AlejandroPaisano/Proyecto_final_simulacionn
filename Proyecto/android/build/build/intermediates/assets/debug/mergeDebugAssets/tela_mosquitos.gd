extends Area3D

@onready var tela_n=$tela_n
@onready var tela_s=$tela_s
@onready var caja=$hitbox
signal puntos
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
	
func activar():
	emit_signal("puntos")
	tela_s.visible=true
	tela_n.visible=false
	caja.disabled=true
	
func reset():
	tela_s.visible=false
	tela_n.visible=true
	caja.disabled=false
