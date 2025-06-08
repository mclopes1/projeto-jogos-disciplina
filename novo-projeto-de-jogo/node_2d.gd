extends Node2D

@onready var dialog = $DialogBox
@onready var timer = $Timer

func _ready() -> void:
	dialog.hide()
	timer.start()
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	print ("dentro do body") # Replace with function body.


func _on_xiquexique_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://dentro_da_chapada.tscn")


func _on_timer_timeout() -> void:
	print ("tempo de exploração acabou") # Replace with function body.
	timer.stop()
