extends Label
@onready var character_body_2d = $"../CharacterBody2D"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = str(character_body_2d.vida)
