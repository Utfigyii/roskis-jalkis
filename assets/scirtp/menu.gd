extends Control

var gamescene = preload("res://assets/gameLoader.tscn")



func _on_playbutton_pressed():
	get_tree().change_scene_to(gamescene)


func _on_help_pressed():
	$AcceptDialog.popup()

func _on_exit_pressed():
	get_tree().quit()


func _on_Button_pressed():
	$AcceptDialog.hide()
