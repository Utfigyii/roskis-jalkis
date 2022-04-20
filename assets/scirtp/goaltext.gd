extends Spatial

signal reset()

func _on_Timer_timeout():
	emit_signal("reset")
