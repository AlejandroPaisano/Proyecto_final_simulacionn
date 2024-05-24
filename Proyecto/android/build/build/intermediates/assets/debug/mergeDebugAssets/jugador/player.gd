extends CharacterBody3D

const speed = 5.0
var target_velocity = Vector3.ZERO
@export var fall_acceleration = 6
@onready var target=$Control/Label
@onready var selector=$CharacterBody3D/XRCamera3D/Mira
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var direction = Vector3.ZERO
	var input_dir=Input.get_vector("Izquierda","derecha","adelante","atras")
	direction = (transform.basis*Vector3(input_dir.x,0,input_dir.y)).normalized()
	if not is_on_floor():
		target_velocity.y=target_velocity.y-(fall_acceleration*delta)
	# Ground Velocity
	target_velocity.x = direction.x * speed
	target_velocity.z = direction.z * speed
	
	if Input.is_action_pressed("giro_der"):
		rotate_y(0.1)
		
	if Input.is_action_pressed("giro_izq"):
		rotate_y(-0.1)
		
	velocity = target_velocity
	move_and_slide()
	
	pass


func _on_avanzar_pressed():
	Input.action_press("adelante")
	pass # Replace with function body.

func _on_retroceder_pressed():
	Input.action_press("atras")
	pass # Replace with function body.

func _on_derecha_pressed():
	Input.action_press("derecha")
	pass # Replace with function body.

func _on_izquierda_pressed():
	Input.action_press("Izquierda")
	pass # Replace with function body.

func _on_izquierda_button_up():
	Input.action_release("Izquierda")
	pass # Replace with function body.

func _on_derecha_button_up():
	Input.action_release("derecha")
	pass # Replace with function body.

func _on_retroceder_button_up():
	Input.action_release("atras")
	pass # Replace with function body.

func _on_avanzar_button_up():
	Input.action_release("adelante")
	pass # Replace with function body.

func _on_giro_derecha_pressed():
	Input.action_press("giro_der")
	pass # Replace with function body.
	
func _on_giro_derecha_button_up():
	Input.action_release("giro_der")
	pass # Replace with function body.
	
func _on_giro_izquierda_pressed():
	Input.action_press("giro_izq")
	pass # Replace with function body.

func _on_giro_izquierda_button_up():
	Input.action_release("giro_izq")
	pass # Replace with function body.

func _on_button_button_down():
	Input.action_press("interac")
	pass # Replace with function body.

func _on_button_button_up():
	Input.action_release("interac")
	pass # Replace with function body.
