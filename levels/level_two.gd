extends Node3D



func _ready():
	MusicManager.selection_audio.stop()
	MusicManager.level_audio.play()

