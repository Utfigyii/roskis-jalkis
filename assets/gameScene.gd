extends Spatial


func _physics_process(delta):
	if Input.is_action_just_pressed("reload"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()


func _on_goal1area_body_entered(body):
	if body.is_in_group("ball"):
		print("goale")

func _on_goal2area_body_entered(body):
	if body.has_method("doGoal"):
		print("goale")


func _on_ball_goal():
	$goaltext/AnimationPlayer.play("goal!!")
	$goaltext/goaltextBody/AudioStreamPlayer.play()
	$goaltext/goaltextBody/goaltextArea/Timer.start(3)


func _on_ball_outOfBounds():
	$game/outofbounds/outofboundssound.play(0)
	$game/outofbounds/outofboundstext/AnimationPlayer.play("outofbounds")
	$game/outofbounds/outofboundstext/resettimer.start(3)


func _on_goaltext_reset():
	get_tree().reload_current_scene()


func _on_outofboundstext_reset():
	get_tree().reload_current_scene()
