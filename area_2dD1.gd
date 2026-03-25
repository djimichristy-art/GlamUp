extends Area2D

@export var target_sprite_path: NodePath  # drag the target player slot Sprite2D here in the Inspector
@onready var target_sprite = get_node(target_sprite_path)

var dragging = false
var is_hovering = false

func _ready():
	# Connect signals
	connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	connect("mouse_exited", Callable(self, "_on_mouse_exited"))
	connect("input_event", Callable(self, "_on_input_event"))

func _on_mouse_entered():
	is_hovering = true
	# Optional: visual feedback
	modulate = Color(1, 1, 1, 0.8)

func _on_mouse_exited():
	is_hovering = false
	modulate = Color(1, 1, 1, 1)

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		dragging = event.pressed

func _process(delta):
	if dragging:
		# Follow the mouse while dragging
		global_position = get_global_mouse_position()
	elif not dragging and target_sprite:
		# Snap to the slot if close enough
		if global_position.distance_to(target_sprite.global_position) < 100:
			global_position = target_sprite.global_position
			# Update the player slot texture
			target_sprite.texture = get_parent().texture
			# Remove the draggable dress
			get_parent().queue_free()
