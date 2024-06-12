extends Area2D

var playerIn

func _on_body_entered(body):
	playerIn = true


func _on_body_exited(body):
	playerIn = false
	
func _process(delta):
	if playerIn:
		if Input.is_action_just_pressed('select'):
			get_tree().change_scene_to_packed(preload("res://scenes/Attacks/batalha.tscn"))
