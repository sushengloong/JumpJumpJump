extends Node

func _on_play_button_pressed():
	_change_to_game_scene()

func _unhandled_key_input(event):
	if Input.is_action_just_pressed("jump"):
		_change_to_game_scene()
	
func _change_to_game_scene():
	get_tree().change_scene_to_file("res://scenes/game.tscn")

