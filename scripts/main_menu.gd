extends Node2D

@onready var playButton = get_node("PlayButton")




func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://game_play.tscn")
