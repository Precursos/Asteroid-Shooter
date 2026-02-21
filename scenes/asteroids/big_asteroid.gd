extends Area2D

@export var speed:float

func _ready():
	pass


func _process(delta):
	position.x -= random_speed * delta
