extends Node2D

var player = null

func _ready():
	if (Game.player_instance != null):
		Game.player_instance.get_parent().remove_child(Game.player_instance)
		add_child(Game.player_instance)
		print(Game.player_instance.get_parent())
	else:
		Game.player_path = preload("res://scenes/Entitys/character.tscn")
		player = Game.player_path.instantiate()
		Game.player_instance = player
		add_child(player)
		print(Game.player_instance.get_parent())



