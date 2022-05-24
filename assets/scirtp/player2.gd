extends Spatial


func _physics_process(delta):
	if Input.is_action_just_pressed("d"):
		$AnimationPlayer.play("kick")
		$bodybody/kickfoot/CollisionShape.disabled = false
		if $bodybody/groundCheck.is_colliding():
			$bodybody.apply_impulse(Vector3(0, 0, 0), Vector3($bodybody.rotation_degrees.z * -0.3, 30, 0))
			$bodybody.apply_torque_impulse(Vector3(0, 0, 20))
	if Input.is_action_just_released("d"):
		$AnimationPlayer.play("legback")
		$bodybody/kickfoot/CollisionShape.disabled = true


func _on_plaer2Button_button_down():
	$AnimationPlayer.play("kick")
	$bodybody/kickfoot/CollisionShape.disabled = false
	if $bodybody/groundCheck.is_colliding():
		$bodybody.apply_impulse(Vector3(0, 0, 0), Vector3($bodybody.rotation_degrees.z * -0.3, 30, 0))
		$bodybody.apply_torque_impulse(Vector3(0, 0, 20))

func _on_plaer2Button_button_up():
	$AnimationPlayer.play("legback")
	$bodybody/kickfoot/CollisionShape.disabled = true
