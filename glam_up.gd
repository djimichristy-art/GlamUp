extends Node2D

# Reference to the instanced Character scene
@onready var character = $Character

# --- DRESSES ---
var dresses = [
	preload("res://assets/dresses/dress1.png"),
	preload("res://assets/dresses/dress2.png"),
	preload("res://assets/dresses/dress3.png"),
	preload("res://assets/dresses/dress4.png")
]

var current_dress = 0

func _on_DressButton1_pressed():
	character.get_node("Dress").texture = dresses[0]
	current_dress = 0

func _on_DressButton2_pressed():
	character.get_node("Dress").texture = dresses[1]
	current_dress = 1

func _on_DressButton3_pressed():
	character.get_node("Dress").texture = dresses[2]
	current_dress = 2

func _on_DressButton4_pressed():
	character.get_node("Dress").texture = dresses[3]
	current_dress = 3

# --- SHOES ---
var shoes = [
	preload("res://assets/shoes/shoe1.png"),
	preload("res://assets/shoes/shoe2.png")
]

var current_shoes = 0

func _on_ShoesButton1_pressed():
	character.get_node("Shoes").texture = shoes[0]
	current_shoes = 0

func _on_ShoesButton2_pressed():
	character.get_node("Shoes").texture = shoes[1]
	current_shoes = 1

# --- ACCESSORY ---
var accessory_texture = preload("res://assets/accessories/accessory.png")
var accessory_on = false

func _on_AccessoryButton_pressed():
	accessory_on = !accessory_on
	if accessory_on:
		character.get_node("Accessory").texture = accessory_texture
	else:
		character.get_node("Accessory").texture = null
