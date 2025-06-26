extends NinePatchRect


@onready var text: RichTextLabel = $Text
@onready var timer = $Timer

var msg_queue: Array = ["Ola Mundo", "estou vivo!!!!!!!!!!!!!!!!!!!!!!!!"]

var dialoging = 1

func _ready():
	# Verify the node type
	assert(text is RichTextLabel, "Text node must be a RichTextLabel")
	text.bbcode_enabled = true  # Enable BBCode

#func _input(event):
	#if event is InputEvent and event.is_action_pressed("ui_accept"):
		#show()
		#show_message()
	#if event is InputEventKey and event.is_action_pressed("ui_down"):
		#add_message("oi!!!!!")
		
func add_message(_msg: String) -> void:
	msg_queue.append(_msg)

func show_message(message) -> void:
	dialoging = -1
	if not is_instance_valid(text):
		push_error("Text node is not valid")
		return
	#text.visible_characters = 0
	#if text.visible_characters < text.text.length():
		#text.visible_characters = text.text.length()
		#print ("vindo pro retunrn")
		#return
	
	#if msg_queue.size() == 0:
		#hide()
		#msg_queue =  ["Ola Mundo", "estou vivo!!!!!!!!!!!!!!!!!!!!!!!!"]
		#return


	#print ("antes de pop_front")
	#var _msg: String = msg_queue.pop_front()
	#print (_msg)
	
	text.text = message
	text.bbcode_text =  "[color=red]"+message+"[/color]"
	timer.start()
	#text.visible_characters = 0
	#print (msg_queue)


func _on_timer_timeout():
	dialoging = 1
	print (" eh um")
	#if text.visible_characters == text.text.length():
		#timer.stop()
	#text.visible_characters +=1 # Replace with function body.
	hide()
	
