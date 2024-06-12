extends Node

signal atacar
signal fugir


func _on_cursor_selected():
	emit_signal("atacar")

func _on_fugir_cursor_selected():
	emit_signal("fugir")
