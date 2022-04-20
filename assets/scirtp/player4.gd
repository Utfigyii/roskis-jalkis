extends Spatial


func _physics_process(delta):
	if Input.is_action_just_pressed("l"):
		$AnimationPlayer.play("kick")
		$bodybody/kickfoot/CollisionShape.disabled = false
		if $bodybody/groundCheck.is_colliding():
			$bodybody.apply_impulse(Vector3(0, 0, 0), Vector3($bodybody.rotation_degrees.z * 0.3, 30, 0))
			$bodybody.apply_torque_impulse(Vector3(0, 0, -20))
	if Input.is_action_just_released("l"):
		$AnimationPlayer.play("legback")
		$bodybody/kickfoot/CollisionShape.disabled = true
