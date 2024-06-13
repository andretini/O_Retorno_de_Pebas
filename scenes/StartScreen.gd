extends Node2D




func _on_button_1_pressed():
	get_tree().change_scene_to_file("res://scenes/Places/mapa_jogo2.tscn")



func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/Sobre.tscn")



func _on_button_3_pressed():
	get_tree().quit()
