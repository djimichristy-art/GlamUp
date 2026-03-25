extends Area2D

var dragging = false
var is_hovering = false

func _ready():
	# Connect signals (make sure they exist in the node)
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
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed

func _process(delta):
	if dragging:
		global_position = get_global_mouse_position()
