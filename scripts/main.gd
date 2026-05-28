extends Node2D

var car_scene:PackedScene = preload("res://scenes/Car.tscn")

func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as AnimatableBody2D
	
	var position_marker = $CarStartPositions.get_children().pick_random() as Marker2D
	
	car.position = position_marker.position
	$Objects.add_child(car)
