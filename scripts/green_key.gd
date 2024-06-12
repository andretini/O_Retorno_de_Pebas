extends Area2D
signal greenKeyCollect

func _on_body_entered(body):
	print("cahve azul!")
	emit_signal("greenKeyCollect")
	queue_free()
