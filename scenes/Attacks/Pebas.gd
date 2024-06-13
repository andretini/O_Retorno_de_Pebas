extends Node
@onready var progress_bar = $ProgressBar
var vida = 100

func _ready():
	progress_bar.value = vida

func _on_panel_container_atacar():
	vida -= 12.5
	if vida <= 0:
		get_tree().change_scene_to_file("res://scenes/win_screen.tscn")
	progress_bar.value = vida
