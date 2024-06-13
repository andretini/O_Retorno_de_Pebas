extends Area2D

var velocity: Vector2 = Vector2(0,0)
var duration = 20

func _ready():
	pass

func _process(delta):
	position += velocity * delta
	duration -= delta
	if duration <= 0:
		queue_free();

func _on_body_entered(body):
	Game.player_health -= 1
	print(Game.player_health)
