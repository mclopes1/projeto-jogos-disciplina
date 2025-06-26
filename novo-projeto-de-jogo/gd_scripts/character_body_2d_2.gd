extends CharacterBody2D

@onready var dialog = $"../DialogBox"
var ultimo_colidir = ""
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

const speed = 100

func _ready():
	global_position = GameState.player_position
	set_physics_process(true)
	#dialog.hide()

func _physics_process(delta):

	var direction_animated = 0

	var direction = Vector2(0,0)
	if (Input.is_key_pressed(KEY_UP)):
		direction += Vector2(0,-1)
	if (Input.is_key_pressed(KEY_DOWN)):
		direction += Vector2(0,1)
	if (Input.is_key_pressed(KEY_LEFT)):
		direction += Vector2(-1,0)
		animated_sprite.flip_h = true
		direction_animated -=1
	if (Input.is_key_pressed(KEY_RIGHT)):
		direction += Vector2(1,0)
		animated_sprite.flip_h = false
		direction_animated+=1
	#current_position = global_position

	# Anima apenas se estiver se movendo para os lados
	if direction_animated != 0:
		if not animated_sprite.is_playing():
			print ("dentro do is playing")
			animated_sprite.play("ciclying1")
	else:
		animated_sprite.stop()
		animated_sprite.frame = 0  # Opcional: mostra o primeiro frame quando parado

	var collision = move_and_collide(direction * speed * delta)
	
	if collision != null:
		print (collision.get_collider().name)
		if collision.get_collider().name == "character_baiano":
			get_tree().change_scene_to_file("res://dentro_de_salvador.tscn")
			#print ("DIALONG: ", dialog.dialoging)
			#if dialog.dialoging != -1:
				#print ("show messssage")
				#dialog.show()
				#dialog.show_message("Você chegou a capital Salvador! \nConsegue adivinhar qual estado está")
		if collision.get_collider().name == "paInacio":
			GameState.player_position = global_position
			get_tree().change_scene_to_file("res://dentro_da_chapada.tscn")
			
