extends Node2D

func _process(delta):
	if GlobleScript.player_health == 6:
		get_node("heart3").visible = true
		get_node("heart2").visible = true
		get_node("heart1").visible = true
		get_node("heart3-5").visible = false
		get_node("heart2-5").visible = false
		get_node("heart1-5").visible = false
		get_node("heart3-0").visible = false
		get_node("heart2-0").visible = false
		get_node("heart1-0").visible = false
		
	if GlobleScript.player_health == 5:
		get_node("heart3").visible = false
		get_node("heart2").visible = true
		get_node("heart1").visible = true
		get_node("heart3-5").visible = true
		get_node("heart2-5").visible = false
		get_node("heart1-5").visible = false
		get_node("heart3-0").visible = false
		get_node("heart2-0").visible = false
		get_node("heart1-0").visible = false
		
	if GlobleScript.player_health == 4:
		get_node("heart3").visible = false
		get_node("heart2").visible = true
		get_node("heart1").visible = true
		get_node("heart3-5").visible = false
		get_node("heart2-5").visible = false
		get_node("heart1-5").visible = false
		get_node("heart3-0").visible = true
		get_node("heart2-0").visible = false
		get_node("heart1-0").visible = false
	
	if GlobleScript.player_health == 3:
		get_node("heart3").visible = false
		get_node("heart2").visible = false
		get_node("heart1").visible = true
		get_node("heart3-5").visible = false
		get_node("heart2-5").visible = true
		get_node("heart1-5").visible = false
		get_node("heart3-0").visible = true
		get_node("heart2-0").visible = false
		get_node("heart1-0").visible = false
		
	if GlobleScript.player_health == 2:
		get_node("heart3").visible = false
		get_node("heart2").visible = false
		get_node("heart1").visible = true
		get_node("heart3-5").visible = false
		get_node("heart2-5").visible = false
		get_node("heart1-5").visible = false
		get_node("heart3-0").visible = true
		get_node("heart2-0").visible = true
		get_node("heart1-0").visible = false
		
	if GlobleScript.player_health == 1:
		get_node("heart3").visible = false
		get_node("heart2").visible = false
		get_node("heart1").visible = false
		get_node("heart3-5").visible = false
		get_node("heart2-5").visible = false
		get_node("heart1-5").visible = true
		get_node("heart3-0").visible = true
		get_node("heart2-0").visible = true
		get_node("heart1-0").visible = false
