extends Control
class_name FearIndicator

@export_category("Exportables")
@export var fear_icon : PackedScene

@export_group("Local")
@export var fear_label : Label
@export var fear_icon_container : HBoxContainer

var fear_amount = 0 :
	set(new_fear_amount):
		fear_amount = new_fear_amount

		for child in fear_icon_container.get_children():
			fear_icon_container.remove_child(child)
			child.queue_free()

		for fear in range(fear_amount):
			var fear_icon_instance = fear_icon.instantiate()
			fear_icon_container.add_child(fear_icon_instance)
		
		fear_label.text = "Current fear: " + str(fear_amount)

func _ready():
	fear_amount = GameplayManager.current_fear

	GameplayManager.fear_changed.connect(on_fear_changed)

func on_fear_changed(new_fear):
	fear_amount = new_fear
