extends Node

var player_current_attack = false

var current_scene = "world"
var transition_scene = false

var player_exit_cliffside_posx = 178
var player_exit_cliffside_posy = 16
var player_start_posx = 21
var player_start_posy = 155

var game_first_loadin = true

func finish_changesscenes():
	if transition_scene == true:
		transition_scene = false
		if current_scene == "world":
			current_scene = "cliff_side"
		else:
			current_scene = "world"
