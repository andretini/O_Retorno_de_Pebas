extends Area2D

var playerIn
@onready var character_body_2d = $"../CharacterBody2D"
var inDialogue = false

	
func _process(delta):
	Game.map_position = character_body_2d.position
	if playerIn and !inDialogue:
		if Input.is_action_just_pressed('select') and (Game.YellowKey and Game.RedKey and Game.GreenKey):
			inDialogue = true
			Game.inBattle = true
			DialogueManager.show_example_dialogue_balloon(load("res://bossDoor.dialogue"),"start")
			return


func _on_body_entered(body):
	playerIn = true
	print("entrou")


func _on_body_exited(body):
	playerIn = false
	inDialogue = false
	print("saiu")
