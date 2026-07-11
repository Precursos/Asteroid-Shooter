extends CharacterBody2D

@export var laser_scene: PackedScene
@export var speed: float

func _physics_process(delta):
	#Diparo
	if Input.is_action_just_pressed("shoot"):
		create_laser()
		
	#Funciona pero hay una forma de juntar esto en una sola linea
	#velocity.y = y_input * speed
	#velocity.x = x_input * speed
	
	#Movimiento de cuerpos físicos (CharacterBody2D, RigidBody2D)
	var y_input = Input.get_axis("move_up","move_down")
	var x_input = Input.get_axis("move_left", "move_right")
	velocity = Vector2(x_input, y_input) * speed
	move_and_slide()

func create_laser():
	var laser_instance = laser_scene.instantiate()
	add_sibling(laser_instance)
#Se indica que el laser debe salir desde la posición de la nave	
	laser_instance.position = position

	
