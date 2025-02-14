extends Node

func _ready():
	print(player_health)

var player_health = 10
var max_health = 10
var player_attacking = false
var player_inattack_range = false
var healing_amount = (max_health * 0.1) + 1
var healing_charges = 3
