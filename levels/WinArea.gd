extends Area3D




func _on_body_entered(body):
	if body.name == "Ball":
		get_tree().change_scene_to_file("res://levels/level_two.tscn")
