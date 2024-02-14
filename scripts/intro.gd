extends VideoStreamPlayer

func _physics_process(delta):
	if Input.is_action_pressed("skip"):
		_on_finished()

func _on_finished():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
