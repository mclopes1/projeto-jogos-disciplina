extends Node2D

@onready var dialog = $DialogBox
@onready var timer = $Timer


var current_position = Vector2(50, 50)

func _ready() -> void:
	dialog.hide()
	timer.start()

func _physics_process(delta):
	if GameState.acertos_estados["bahia"] == true:
		var imagem = preload("res://images/bandeiras/bahia_outra.svg")
		get_node("character_baiano/Baiano").texture = imagem
	elif GameState.acertos_estados["sergipe"] == true:
		var imagem = preload("res://images/bandeiras/sergipe.svg")
		get_node("aracaju/Sprite2D").texture = imagem
	elif GameState.acertos_estados["alagoas"] == true:
		var imagem = preload("res://images/bandeiras/alagoas.png")
		get_node("character_baiano/Baiano").texture = imagem
	elif GameState.acertos_estados["pernambuco"] == true:
		var imagem = preload("res://images/bandeiras/pernambuco.png")
		get_node("character_baiano/Baiano").texture = imagem
	elif GameState.acertos_estados["paraiba"] == true:
		var imagem = preload("res://images/bandeiras/paraiba.png")
		get_node("character_baiano/Baiano").texture = imagem
	elif GameState.acertos_estados["rn"] == true:
		var imagem = preload("res://images/bandeiras/rn.png")
		get_node("character_baiano/Baiano").texture = imagem
	elif GameState.acertos_estados["ceara"] == true:
		var imagem = preload("res://images/bandeiras/ceara.png")
		get_node("character_baiano/Baiano").texture = imagem
	elif GameState.acertos_estados["piaui"] == true:
		var imagem = preload("res://images/bandeiras/piaui.png")
		get_node("teresina/Sprite2D").texture = imagem
	elif GameState.acertos_estados["maranhao"] == true:
		var imagem = preload("res://images/bandeiras/maranhao.svg")
		get_node("maranhao/Sprite2D").texture = imagem

func _on_area_2d_body_entered(body: Node2D) -> void:
	print ("dentro do body") # Replace with function body.


func _on_xiquexique_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://dentro_de_xique_xique.tscn")


func _on_timer_timeout() -> void:
	print ("tempo de exploração acabou") # Replace with function body.
	#get_tree().change_scene_to_file("res://node_game_over.tscn")
	timer.stop()


func _on_serra_capivara_body_entered(body: Node2D) -> void:
	print ("Entrou na serra da capivara") # Replace with function body.


func _on_teresina_body_entered(body: Node2D) -> void:
	print ("Entrou em teresina") # Replace with function body.


func _on_lencois_maranhenses_body_entered(body: Node2D) -> void:
	print ("Lencois maranhenses") # Replace with function body.


func _on_juazeiro_norte_body_entered(body: Node2D) -> void:
	print ("Em Juazeiro do Norte") # Replace with function body.

func _on_fortaleza_body_entered(body: Node2D) -> void:
	print ("Em Fortaleza") # Replace with function body.


func _on_natal_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_joaopessoa_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_recife_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_maceio_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_aracaju_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
