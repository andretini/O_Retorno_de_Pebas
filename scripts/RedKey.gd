extends Area2D
signal redKeyCollect

func _on_body_entered(body):
	print("cahve amarela!")
	emit_signal("redKeyCollect")
	queue_free()
