extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("enter_cliff_side")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	change_scene()



func _on_cliffside_exit_point_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true


func _on_cliffside_exit_point_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false

func change_scene():
	if global.transition_scene == true:
		if global.current_scene == "world":
			get_tree().change_scene_to_file("res://scenes/world.tscn")
			global.finish_changesscenes()
