extends Node2D


var objetos_na_area: Array = []
@onready var timer = $Timer
@onready var pontos = $Label
@onready var mostrador_tempo = $mostrador_tempo
@onready var cor = $Area2D/ColorRect

func _ready() -> void:
	timer.start()
	pontos.text = "Acertos: 0"


func _physics_process(delta):
	if (Input.is_key_pressed(KEY_BACKSPACE)):
		get_tree().change_scene_to_file("res://node_2d.tscn")
	mostrador_tempo.text = " Tempo Restante:  " + str(round(timer.time_left))
	
		
func _on_area_2d_body_entered(body: Node2D) -> void:
	print ("objeto dentro da on_area_2d")
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


func _on_area_2d_area_entered(area: Area2D) -> void:
	
	print (area.is_in_group("bahia")) # Replace with function body.
	var count = 0
	var tam = get_tree().get_nodes_in_group("bahia").size()
	if not objetos_na_area.has(area):
		objetos_na_area.append(area)
	#if objetos_na_area.size() == get_tree().get_nodes_in_group("bahia").size():
	for ar in objetos_na_area:
		if ar.is_in_group("bahia"):
			count+=1
	pontos.text = "Acertos: " + str(count) + " de " + str(tam)
	if count == get_tree().get_nodes_in_group("bahia").size():
		print ("todos em bahia")
		GameState.acertos_estados["bahia"] = true
	else:
		print ("pera ai meu rei")
	cor.color = Color(0, 1, 0)


func _on_area_2d_area_exited(area: Area2D) -> void:
	var count = 0
	
	var tam = get_tree().get_nodes_in_group("bahia").size()
	if objetos_na_area.has(area):
		objetos_na_area.erase(area)
	for ar in objetos_na_area:
		if ar.is_in_group("bahia"):
			count+=1
	pontos.text = "Acertos: " + str(count) + " de " + str(tam)
	cor.color = Color(1, 1, 1)


func _on_timer_timeout() -> void:
	timer.stop()
	print ("seu tempo acabou") # Replace with function body.
	get_tree().change_scene_to_file("res://node_2d.tscn")
