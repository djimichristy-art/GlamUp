extends Node2D

# --- DRESS ---
@onready var dress = $Dress

var dresses = [
	preload("res://assets/dresses/dress1.png"),
	preload("res://assets/dresses/dress2.png"),
	preload("res://assets/dresses/dress3.png"),
	preload("res://assets/dresses/dress4.png")
]

var current_dress = 0


# --- SHOES ---
@onready var shoes = $Shoes

var shoes_list = [
	preload("res://assets/shoes/shoe1.png"),
	preload("res://assets/shoes/shoe2.png")
]

var current_shoes = 0


# --- ACCESSORY ---
@onready var accessory = $Accessory

var accessory_texture = preload("res://assets/accessories/accessory.png")
var accessory_on = false


# --- FUNCTIONS ---

func change_dress():
	current_dress += 1
	if current_dress >= dresses.size():
		current_dress = 0
	
	dress.texture = dresses[current_dress]


func change_shoes():
	current_shoes += 1
	if current_shoes >= shoes_list.size():
		current_shoes = 0
	
	shoes.texture = shoes_list[current_shoes]


func change_accessory():
	accessory_on = !accessory_on
	
	if accessory_on:
		accessory.texture = accessory_texture
	else:
		accessory.texture = null
