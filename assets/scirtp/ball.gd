extends Spatial

signal goal1()
signal goal2()
signal outOfBounds()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	pass

func _on_soundArea_body_entered(body):
	if body is KinematicBody:
		$RigidBody/ballKickSound.play(0)
		$RigidBody/fastball.play(0)
	$RigidBody/ballbounceSound.play(0)
	if body.has_method("goalhitsound"):
		$RigidBody/ballgoalbonksound.play(0)

func doGoal():
	print("now is goal")

func _on_soundArea_area_entered(area):
	if area.has_method("doGoal1"):
		print("voi vittu")
		emit_signal("goal1")
	elif area.has_method("doGoal2"):
		print("toine maali oli sit")
		emit_signal("goal2")
	if area.has_method("outOfBounds"):
		emit_signal("outOfBounds")
	$RigidBody/soundArea/CollisionShape.disabled = true
