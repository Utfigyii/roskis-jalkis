extends Control

var score1 = 0
var score2 = 0
var ignoreScore = false
signal restart()

var menuscene = load("res://menu.tscn")


func _on_gameLoader_updateScore():
	score1 = get_parent().score1
	score2 = get_parent().score2
	$"1goals".value = score1
	$"2goals".value = score2
	print("scoreUpdated")
	if (score1 == 10 or score2 == 10) and !ignoreScore:
		$WindowDialog.popup()


func _on_AcceptDialog_confirmed():
	pass # Replace with function body.


func _on_continue_pressed():
	$WindowDialog.hide()
	ignoreScore = true


func _on_restartGame_pressed():
	emit_signal("restart")
	$WindowDialog.hide()

func _on_goMenu_pressed():
	get_tree().change_scene_to(menuscene)
