extends Area2D

@export var speed: float 

func _process(delta):
	position.x += speed * delta
