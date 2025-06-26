extends Area2D


var selected = false


func _process(delta):
	if selected:
		followMouse()
		

func followMouse():
	position = get_global_mouse_position()


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
#func _on_bonfim_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
		if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				selected = true
			else:
				selected = false # Replace with function body.place with function body.
