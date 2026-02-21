extends CharacterBody2D

@export var speed: float

func _physics_process(delta):
	#Físicas
	#Movimiento de cuerpos físicos (CharacterBody2D, RigidBody2D)
	var y_input = Input.get_axis("move_up","move_down")
	var x_input = Input.get_axis("move_left", "move_right")
	
	#Funciona pero hay una forma de juntar esto en una sola linea
	#velocity.y = y_input * speed
	#velocity.x = x_input * speed
	
	velocity = Vector2(x_input, y_input) * speed
	
	move_and_slide()
