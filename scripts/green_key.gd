extends Area2D
signal greenKeyCollect

func _on_body_entered(body):
	print("cahve azul!")
	emit_signal("greenKeyCollect")
	Game.GreenKey = true
	queue_free()
