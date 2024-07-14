extends Marker3D

var mouse_sensitivity := .2

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _unhandled_input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.z += event.relative.y * mouse_sensitivity
		rotation_degrees.z = clamp(rotation_degrees.z , -30 , 60)
		
		rotation_degrees.y -= event.relative.x * mouse_sensitivity
		rotation_degrees.y = clamp(rotation_degrees.y , -30 , 30)
