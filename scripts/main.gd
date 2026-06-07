extends Node2D

var car_scene:PackedScene = preload("res://scenes/Car.tscn")
var score := 0

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var position_marker = $CarStartPositions.get_children().pick_random() as Marker2D
	
	car.position = position_marker.position
	$Objects.add_child(car)
	car.connect("body_entered", go_to_title)


func go_to_title(body: Node2D):
	call_deferred("change_scene", body)
	

func _on_score_timer_timeout() -> void:
	self.score += 1
	%Score.text = "Score: " + str(score)


func change_scene(_body: Node2D):
	get_tree().change_scene_to_file("res://scenes/Title.tscn")


func _on_finish_area_body_entered(body: Node2D) -> void:
	Global.score = self.score
	go_to_title(body)
