# GlamUpScene.gd
extends Control

# Instance of your CharacterScene
@onready var character = $Character  # make sure this matches your node name

# Hair Button
func _on_HairButton_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		character.change_hair()

# Top Button
func _on_TopButton_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		character.change_top()

# Bottom Button
func _on_BottomButton_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		character.change_bottom()

# Dress Button
func _on_DressButton_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		character.change_dress()

# Shoes Button
func _on_ShoesButton_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		character.change_shoes()

# Accessory Button
func _on_AccessoryButton_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		character.change_accessory()
