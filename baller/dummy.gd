extends CharacterBody2D

var health = 100
var can_take_damage = false
var I_seconds_running = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if GlobleScript.player_inattack_range == true and I_seconds_running == false:
		can_take_damage = true
	
	if GlobleScript.player_attacking == true and GlobleScript.player_inattack_range == true and can_take_damage == true:
		health -= 1
		can_take_damage = false
		$"I seconds".start()
		I_seconds_running = true
		print(health)


func _on_i_seconds_timeout():
	can_take_damage = true
	I_seconds_running = false
