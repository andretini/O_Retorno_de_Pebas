extends Node

@onready var Music = $AudioStreamPlayer

var battleMusic = preload("res://Audio/chiptune-grooving-142242.mp3")
var backgroundMusic = preload("res://Audio/sinnesloschen-beam-117362.mp3")
var preBattleMusic = preload("res://Audio/castle-of-athanasius-151010.mp3")
var VictoryMusic =  preload("res://Audio/victory-screen-150573.mp3")
var LoseMusic = preload("res://Audio/kl-peach-game-over-ii-135684.mp3")

# Called when the node enters the scene tree for the first time.
func _ready():
	battleMusic.loop = true
	backgroundMusic.loop = true
	preBattleMusic.loop = true
	VictoryMusic.loop = true
	LoseMusic.loop = true

func playBattleMusic():
	Music.stream = battleMusic
	Music.play()
func playBackgroundMusic():
	Music.stream = backgroundMusic
	Music.play()
func playPreBattleMusicMusic():
	Music.stream = preBattleMusic
	Music.play()
func playVictoryMusic():
	Music.stream = VictoryMusic
	Music.play()
func playLoseMusic():
	Music.stream = LoseMusic
	Music.play()
