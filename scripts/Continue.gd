extends Button



func _on_pressed():
	Game.player_health = 30
	Game.player_position = Vector2(150, 100)
	get_tree().change_scene_to_file("res://scenes/Places/mapa_jogo.tscn")
