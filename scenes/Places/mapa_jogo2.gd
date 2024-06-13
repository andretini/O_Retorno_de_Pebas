extends Node2D
@onready var character_body_2d = $CharacterBody2D

@onready var red_key = $RedKey
@onready var green_key = $GreenKey
@onready var yellow_key = $YellowKey


# Called when the node enters the scene tree for the first time.
func _ready():
	if Game.map_position == null:
		Game.map_position = Vector2(160, 80)
	
	if Game.RedKey:
		red_key.queue_free()
	if Game.GreenKey:
		green_key.queue_free()
	if Game.YellowKey:
		yellow_key.queue_free()
	
	GlobalAudioStreamPlayer.playBackgroundMusic()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
