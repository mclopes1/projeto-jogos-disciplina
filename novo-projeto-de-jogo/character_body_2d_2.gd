extends CharacterBody2D

@onready var dialog = $"../DialogBox"
var ultimo_colidir = ""

const speed = 100

func _ready():
	set_physics_process(true)
	#dialog.hide()

func _physics_process(delta):

	var direction = Vector2(0,0)
	if (Input.is_key_pressed(KEY_UP)):
		direction += Vector2(0,-1)
	if (Input.is_key_pressed(KEY_DOWN)):
		direction += Vector2(0,1)
	if (Input.is_key_pressed(KEY_LEFT)):
		direction += Vector2(-1,0)
	if (Input.is_key_pressed(KEY_RIGHT)):
		direction += Vector2(1,0)

		

	var collision = move_and_collide(direction * speed * delta)
	
	if collision != null:
		print (collision.get_collider().name)
		if collision.get_collider().name == "character_baiano":
			print ("show messssage")
			dialog.show()
			dialog.show_message("Você chegou a capital Salvador! \nConsegue adivinhar qual estado está")
		if collision.get_collider().name == "paInacio":
			get_tree().change_scene_to_file("res://dentro_da_chapada.tscn")
			
