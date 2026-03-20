extends Node2D

@onready var character = $Character  # the instanced Character scene

# --- BUTTON FUNCTIONS ---

func _on_DressButton_pressed():
	character.change_dress("res://assets/dresses/dress1.png")

func _on_ShoesButton_pressed():
	character.change_shoes("res://assets/shoes/shoe1.png")

func _on_AccessoryButton_pressed():
	character.change_accessory("res://assets/accessories/accessory.png")

func _on_dress_button_1_pressed() -> void:
	pass # Replace with function body.


func _on_shoes_button_pressed() -> void:
	pass # Replace with function body.


func _on_accessory_button_pressed() -> void:
	pass # Replace with function body.
