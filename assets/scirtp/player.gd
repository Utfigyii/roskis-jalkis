extends Spatial


func _physics_process(delta):
	if Input.is_action_just_pressed("a"):
		$AnimationPlayer.play("kick")
		$bodybody/kickfoot/CollisionShape.disabled = false
		if $bodybody/groundCheck.is_colliding():
			$bodybody.apply_impulse(Vector3(0, 0, 0), Vector3(15, 80, 0))
			$bodybody.apply_torque_impulse(Vector3(0, 0, 20))
	if Input.is_action_just_released("a"):
		$AnimationPlayer.play("legback")
		$bodybody/kickfoot/CollisionShape.disabled = true
