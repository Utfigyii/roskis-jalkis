extends Node2D

var gamingscene = preload("res://menu.tscn")

func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene_to(gamingscene)



func _on_Button_pressed():
	$LoudWarnin.visible = false
	$AudioStreamPlayer.play()
	$AnimationPlayer.play("intro spalsh")
