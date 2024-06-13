extends Node2D
@onready var character_body_2d = $CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Game.map_position == null:
		Game.map_position = Vector2(160, 80)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
