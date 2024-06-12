extends Node

var player_health = 30
var player_position = null
var map_position = null
var inBattle = false

var YellowKey = false
var RedKey = false
var GreenKey = false

func reset():
	player_health = 30
	player_position = null
	var inBattle = false
