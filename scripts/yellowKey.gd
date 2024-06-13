extends Area2D
signal yellowKeyCollect

func _on_body_entered(body):
	print("cahve amarela!")
	emit_signal("yellowKeyCollect")
	Game.YellowKey = true
	queue_free()
