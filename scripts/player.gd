extends CharacterBody2D


var speed := 150
var direction := Vector2.ZERO


func _physics_process(_delta: float):
	direction = Input.get_vector("left", "right", "up", "down")
	
	self.velocity = direction * speed
	animation()
	self.move_and_slide()


func animation():
	if (direction):
		$AnimatedSprite2D.flip_h = direction.x > 0
		
		if (direction.x != 0):
			$AnimatedSprite2D.animation = "left"
		else:
			$AnimatedSprite2D.animation = "up" if (direction.y < 0) else "down"
	else:
		$AnimatedSprite2D.frame = 0
