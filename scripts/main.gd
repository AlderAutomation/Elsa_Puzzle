extends Node2D

onready var mouse_pos = get_viewport().get_mouse_position()
onready var grey_head = get_node("greyed_head")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var mouse_pos = get_viewport().get_mouse_position()
	var grey_head_pos = grey_head.get_position()
	print (grey_head_pos)
	print (mouse_pos)
