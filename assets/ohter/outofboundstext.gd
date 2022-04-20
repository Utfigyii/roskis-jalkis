extends Spatial

signal reset()

func _on_resettimer_timeout():
	emit_signal("reset")
