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
	
	if (self.position.x < -20 or self.position.x > 400):
		self.queue_free()
