extends Node2D

var attack_scene = preload("res://scenes/Attacks/Projectile/AttackPattern1.tscn")

func _on_batalha_spawn():
	var attack_instance = attack_scene.instantiate()
	add_child(attack_instance)
