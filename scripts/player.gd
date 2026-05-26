extends Node2D

var speed := 200
var direction := Vector2(1, 1)

func _process(delta: float):
	self.position += (direction * speed) * delta
