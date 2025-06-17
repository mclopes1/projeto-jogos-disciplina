extends Node2D

func _physics_process(delta):
	if (Input.is_key_pressed(KEY_BACKSPACE)):
		get_tree().change_scene_to_file("res://node_2d.tscn")
		
		
func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://node_2d.tscn") # Replace with function body.


func _on_line_edit_text_submitted(new_text: String) -> void:
	if new_text == "bahia":
		print ("acertou!!! ")
		GameState.acertos_estados["bahia"] = true
		GameState.pontos = 10
		get_tree().change_scene_to_file("res://node_2d.tscn")
	else:
		print ("ERROU ESTADO")
		GameState.contador_erros["bahia"]+=1
		if GameState.contador_erros["bahia"] == 3:
			
			get_tree().change_scene_to_file("res://node_2d.tscn")
			
		
