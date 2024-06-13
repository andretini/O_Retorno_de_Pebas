extends Node2D

@onready var projectile = load("res://scenes/Attacks/Projectile/projectile.tscn")
@onready var path = $movingPath
@onready var path2 = $movingPath2


var spawn_cooldown: float = 0
var spawn_duration = 5
# Called when the node enters the scene tree for the first time.
func _ready(): 
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	if spawn_duration > 0 and spawn_cooldown <= 0:
		spawn_cooldown = 1
		shoot()
		
	spawn_cooldown -= 1 * delta
	spawn_duration -= 1 * delta
	
func shoot():
	path.add_child.call_deferred(projectile.instantiate())
	path2.add_child.call_deferred(projectile.instantiate())
	
