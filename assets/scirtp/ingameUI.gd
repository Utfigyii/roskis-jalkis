extends Control

var score1 = 0
var score2 = 0




func _on_gameLoader_updateScore():
	score1 = get_parent().score1
	score2 = get_parent().score2
	$"1goals".value = score1
	$"2goals".value = score2
	print("scoreUpdated")
	if (score1 >= 10 or score2 >= 10):
		$AcceptDialog.popup()


func _on_AcceptDialog_confirmed():
	pass # Replace with function body.
