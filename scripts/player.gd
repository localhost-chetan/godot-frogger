extends CharacterBody2D

var speed := 150
var direction := Vector2.ZERO

func _physics_process(_delta: float):
	direction = Input.get_vector("left", "right", "up", "down")
	self.velocity = direction * speed
	self.move_and_slide()
