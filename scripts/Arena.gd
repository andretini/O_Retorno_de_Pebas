extends Node2D

var attack_scene = preload("res://scenes/Attacks/Projectile/AttackPattern1.tscn")
var player

func _ready():
	if (Game.player_path != null and Game.player_instance != null):
		print(Game.player_instance.get_parent())
		Game.player_instance.get_parent().remove_child(Game.player_instance)
		add_child(Game.player_instance)
		print(Game.player_instance.get_parent())
	else:
		Game.player_path = preload("res://scenes/Entitys/character.tscn")
		player = Game.player_path.instantiate()
		Game.player_instance = player
		add_child(player)
		print(Game.player_instance)

func _on_batalha_spawn():
	player.position = Vector2(160, 140)
	var attack_instance = attack_scene.instantiate()
	add_child(attack_instance)
