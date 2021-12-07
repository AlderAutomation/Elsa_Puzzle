extends Area2D

var dragging = false

signal dragsignal;

func _ready():
	connect("dragsignal",self,"_set_drag_pc")
	
	
func _process(delta):
	if dragging:
		var mousepos = get_viewport().get_mouse_position()
		self.position = Vector2(mousepos.x, mousepos.y)

		

func _set_drag_pc():
	dragging=!dragging


func _on_KinematicBody2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()



func _on_KinematicBody2D2_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()



func _on_KinematicBody2D3_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()



func _on_KinematicBody2D4_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()


func _on_Piece_Bottom_area_entered(area):
	if area.is_in_group("bottom"):
		get_node("../Piece_Bottom/piece3").visible = false


func _on_Piece_head_area_entered(area):
	if area.is_in_group("head"):
		get_node("../Piece_head/piece1").visible = false


func _on_Piece_Torso_area_entered(area):
	if area.is_in_group("torso"):
		get_node("../Piece_Torso/piece2").visible = false


func _on_Piece_Hand_area_entered(area):
	if area.is_in_group("hand"):
		get_node("../Piece_Hand/piece4").visible = false
