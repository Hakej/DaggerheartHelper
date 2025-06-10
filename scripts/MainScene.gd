extends Node2D
class_name MainScene

func _input(event):
	if event is not InputEventKey:
		return
	
	if not event.is_pressed():
		return
	
	if Input.is_action_just_pressed("increase_fear"):
		GameplayManager.gain_fear()
		return
	
	if Input.is_action_just_pressed("reduce_fear"):
		GameplayManager.lose_fear()
		return
