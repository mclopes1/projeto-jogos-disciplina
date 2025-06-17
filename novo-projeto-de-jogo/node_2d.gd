extends Node2D

@onready var dialog = $DialogBox
@onready var timer = $Timer

var current_position = Vector2(50, 50)

func _ready() -> void:
	dialog.hide()
	timer.start()

func _physics_process(delta):
	print (GameState.acertos_estados)
	print (GameState.pontos)
	print ("erros da bahia: ", GameState.contador_erros["bahia"])

func _on_area_2d_body_entered(body: Node2D) -> void:
	print ("dentro do body") # Replace with function body.


func _on_xiquexique_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://dentro_da_chapada.tscn")


func _on_timer_timeout() -> void:
	print ("tempo de exploração acabou") # Replace with function body.
	#get_tree().change_scene_to_file("res://node_game_over.tscn")
	timer.stop()
