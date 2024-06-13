extends Control

var inBattle: bool = false

# Declare onready variables
@onready var panel_container: Node = $PanelContainer
@onready var arena = $Arena
@onready var timer = $Timer
@onready var progress_bar = $ProgressBar

signal spawn

func _ready():	
		arena.process_mode = Node.PROCESS_MODE_DISABLED
		arena.visible = false
		GlobalAudioStreamPlayer.playBattleMusic()

func toggleBattle():
	inBattle = !inBattle
	
	if inBattle:
		arena.process_mode = Node.PROCESS_MODE_PAUSABLE
		arena.visible = true
		
		emit_signal("spawn")
		
		panel_container.process_mode = Node.PROCESS_MODE_DISABLED
		panel_container.visible = false
	else:
		arena.process_mode = Node.PROCESS_MODE_DISABLED
		arena.visible = false
		
		panel_container.process_mode = Node.PROCESS_MODE_PAUSABLE
		panel_container.visible = true

func _process(delta):
	progress_bar.value = Game.player_health * 100 / 30
	
	if Game.player_health <= 0:
		get_tree().change_scene_to_file("res://scenes/death_screen.tscn")

func _on_panel_container_atacar():
	toggleBattle()

func _on_panel_container_fugir():	
	Game.inBattle = false
	get_tree().change_scene_to_file("res://scenes/Places/mapa_jogo2.tscn")


func _on_timer_timeout():
	toggleBattle()


