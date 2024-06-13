extends Node2D

var count = 0
@onready var timer = $"../Timer"

var attack_scene1 = preload("res://scenes/Attacks/Patterns/AttackPattern1.tscn")
var attack_scene2 = preload("res://scenes/Attacks/Patterns/AttackPattern2.tscn")
@onready var character_body_2d = $CharacterBody2D


func _on_batalha_spawn():
	character_body_2d.position =  Vector2(155, 150)
	
	var rng = RandomNumberGenerator.new()
	count = rng.randi_range(0, 1)
	print(count)
	
	if count == 0:
		var attack_instance = attack_scene1.instantiate()
		add_child(attack_instance)
		timer.wait_time = 7
		timer.start()
	if count == 1:
		var attack_instance = attack_scene2.instantiate()
		add_child(attack_instance)
		timer.wait_time = 10
		timer.start()
	count += 1
