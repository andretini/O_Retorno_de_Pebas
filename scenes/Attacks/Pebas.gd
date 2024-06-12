extends Node

var vida = 100


func _on_panel_container_atacar():
	vida -= 25
	if vida <= 0:
		get_tree().change_scene_to_file("res://scenes/win_screen.tscn")
