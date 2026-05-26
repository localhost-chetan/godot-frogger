extends Node2D

var speed := 200
var direction := Vector2.ZERO

func _physics_process(delta: float):
	direction = Input.get_vector("left", "right", "up", "down")
	self.position += (direction * speed) * delta
