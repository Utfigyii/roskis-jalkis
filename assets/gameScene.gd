extends Spatial

var score1 = 0
var score2 = 0

signal player1()
signal player2()

func _physics_process(delta):
	#if Input.is_action_just_pressed("reload"):
	#	get_tree().reload_current_scene()
#	if Input.is_action_just_pressed("exit"):
	#	get_tree().quit()
	pass

func _on_goal1area_body_entered(body):
	if body.is_in_group("ball"):
		print("goale-group")

func _on_goal2area_body_entered(body):
	if body.has_method("doGoal"):
		print("goale-hasmethod")




func _on_ball_outOfBounds():
	$game/outofbounds/outofboundssound.play(0)
	$game/outofbounds/outofboundstext/AnimationPlayer.play("outofbounds")
	$game/outofbounds/outofboundstext/resettimer.start(3)


func _on_goaltext_reset():
	#get_tree().reload_current_scene()
	pass


func _on_outofboundstext_reset():
	#get_tree().reload_current_scene()
	pass

func _on_ball_goal1():
	$goaltext/AnimationPlayer.play("goal!!")
	$goaltext/goaltextBody/AudioStreamPlayer.play()
	$goaltext/goaltextBody/goaltextArea/Timer.start(3)
	emit_signal("player1")
	score1 = score1 + 1

func _on_ball_goal2():
	$goaltext/AnimationPlayer.play("goal!!")
	$goaltext/goaltextBody/AudioStreamPlayer.play()
	$goaltext/goaltextBody/goaltextArea/Timer.start(3)
	emit_signal("player2")
	score2 = score2 + 1
