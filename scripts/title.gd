extends Control

func _process(_delta: float):
	if (Input.is_action_just_pressed("confirm")):
		get_tree().change_scene_to_file("res://scenes/Main.tscn")

func _ready():
	%Score.text = "Total Score: " + str(Global.score) if Global.score > 0 else "You Lost! Try again"
