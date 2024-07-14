extends Node3D



func _ready():
	MusicManager.selection_audio.play()




func _on_start_pressed():
	get_tree().change_scene_to_file("res://levels/level_one.tscn")


func _on_exit_pressed():
	get_tree().quit()
