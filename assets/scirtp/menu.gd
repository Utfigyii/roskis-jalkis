extends Control

var gamescene = preload("res://assets/gameLoader.tscn")



func _on_playbutton_pressed():
	get_tree().change_scene_to(gamescene)
