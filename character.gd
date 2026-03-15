extends Node2D

# Store references to the layers
@onready var body = $Body
@onready var hair = $Hair
@onready var dress = $Dress
@onready var shoes = $Shoes
@onready var accessory = $Accessory

# Function to change clothing
func change_clothes(layer_name: String, texture_path: String):
	var tex = load(texture_path)
	match layer_name:
		"hair":
			hair.texture = tex
		"dress":
			dress.texture = tex
		"shoes":
			shoes.texture = tex
		"accessory":
			accessory.texture = tex
		_:
			print("Layer not found: ", layer_name)
