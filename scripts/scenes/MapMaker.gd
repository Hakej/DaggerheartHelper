extends Node2D
class_name MapMaker

@export var camera : Camera2D

func _input(_event):
	if Input.is_action_just_pressed("zoom_in"):
		camera.zoom.x += 0.1
		camera.zoom.y += 0.1
	elif Input.is_action_just_pressed("zoom_out"):
		camera.zoom.x -= 0.1
		camera.zoom.y -= 0.1
