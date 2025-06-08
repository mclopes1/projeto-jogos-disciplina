extends Node2D



func _physics_process(delta):
	if (Input.is_key_pressed(KEY_BACKSPACE)):
		get_tree().change_scene_to_file("res://node_2d.tscn")
		
func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://node_2d.tscn") # Replace with function body.
