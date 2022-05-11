extends Node2D

var gamingscene = preload("res://assets/gameLoader.tscn")

func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene_to(gamingscene)

