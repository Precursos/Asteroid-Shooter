extends Area2D

@export var min_speed: float
@export var max_speed: float

@export var min_rotation_speed: float
@export var max_rotation_speed: float

var random_speed
var random_speed_rotation

func _ready():
	random_speed = randf_range(min_speed, max_speed)
	random_speed_rotation = randf_range(min_rotation_speed, max_rotation_speed)


#Leer documetación.
#Delta es el tiempo entre frames por segundo

func _process(delta):
	position.x -= random_speed * delta
	#Si en vez de poner un "+" se pone un "-" la rotación se invierte
	rotation_degrees += random_speed_rotation * delta
