extends Sprite2D

@export var character_path: NodePath
@onready var character = get_node(character_path)

@export var target_sprite_name: String

var dragging = false
var drag_offset = Vector2.ZERO  # renamed

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed
			if dragging:
				drag_offset = global_position - event.position

	if event is InputEventMouseMotion and dragging:
		global_position = event.position + drag_offset

func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		if dragging:
			dragging = false
			var target_sprite = character.get_node(target_sprite_name)
			var dist = global_position.distance_to(target_sprite.global_position)
			if dist < 100:
				target_sprite.texture = texture
				queue_free()
