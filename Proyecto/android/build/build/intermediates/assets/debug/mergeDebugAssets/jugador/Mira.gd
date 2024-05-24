extends Area3D

var disponible=false
@onready var texto=$"../../../Control/Label"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("interac") and disponible==true:
		var objetivo=get_overlapping_areas()[0]
		objetivo.activar()
		print("mas papas")
	pass


func _on_area_entered(area):
	disponible=true
	texto.text="interactuar"
	print("papas")
	pass # Replace with function body.


func _on_area_exited(area):
	disponible=false
	texto.text=""
	pass # Replace with function body.


