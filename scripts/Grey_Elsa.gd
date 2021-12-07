extends Node2D


func _ready():
	pass


func _on_bottom_area_entered(area):
	if area.is_in_group("bottom"):
		$bottom/Grey_Elsa_Bottom.set_material(null)


func _on_hand_area_entered(area):
	if area.is_in_group("hand"):
		$hand/Grey_Elsa_Hand.set_material(null)



func _on_torso_area_entered(area):
	if area.is_in_group("torso"):
		$torso/Grey_Elsa_Torso.set_material(null)



func _on_head_area_entered(area):
	if area.is_in_group("head"):
		$head/Grey_Elsa_head.set_material(null)

