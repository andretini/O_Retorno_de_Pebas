extends Area2D

var playerIn
@onready var character_body_2d = $"../CharacterBody2D"


	
func _process(delta):
	Game.map_position = character_body_2d.position
	if playerIn:
		if Input.is_action_just_pressed('select'):
			Game.inBattle = true
			get_tree().change_scene_to_file("res://scenes/Attacks/batalha.tscn")


func _on_body_entered(body):
	playerIn = true
	print("entrou")


func _on_body_exited(body):
	playerIn = false
	print("saiu")
