extends Node2D


func _ready():
	pass


func _on_bottom_area_entered(area):
	if area.is_in_group("bottom"):
		print("bottoms touched hehehehehe")


func _on_hand_area_entered(area):
	pass # Replace with function body.


func _on_torso_area_entered(area):
	pass # Replace with function body.


func _on_head_area_entered(area):
	pass # Replace with function body.
