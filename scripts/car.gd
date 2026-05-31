extends Area2D


var direction := Vector2.LEFT
var speed := 250	# speed px/frame
var colors := [
	preload("res://assets/graphics/cars/green.png"),
	preload("res://assets/graphics/cars/red.png"),
	preload("res://assets/graphics/cars/yellow.png"),
]


func _ready():
	if (self.position.x <= 0):
		direction = Vector2.RIGHT
		$Sprite2D.texture = colors.pick_random()

func _physics_process(delta: float):
	self.position += (direction * speed) * delta	# speed px/second
	

func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	self.queue_free()
