extends CharacterBody2D

var speed = 400.0
var dashing_speed = 1200.0
var mana = 25
var max_mana = 25
var dashing = false
var can_dash = true
var can_attack = true

func _physics_process(delta):
	
	get_node("mana bar").value = mana
	
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed 
	
	if Input.is_action_just_pressed("dash") and can_dash == true:
		dashing = true
		can_dash = false
		$"dash time".start()
		$"dash cooldown".start()
	
	
	if dashing == true:
		velocity = direction * dashing_speed 
	else:
		velocity = direction * speed 
		
	if GlobleScript.player_health <= 0:
		queue_free()
		
	if GlobleScript.player_health > GlobleScript.max_health:
		queue_free()
	
	move_and_slide()
	
	if Input.is_action_just_pressed("Attack") and can_attack == true and GlobleScript.player_inattack_range == true:
		GlobleScript.player_attacking = true
		can_attack = false
		$"attack time".start()
		$"attack cooldown".start()
	
	if Input.is_action_just_pressed("spell 1"):
		mana -= 5
	
	if mana <= max_mana:
		mana += 0.1
	
	if Input.is_action_just_pressed("healing") and GlobleScript.healing_charges > 0:
		GlobleScript.player_health += GlobleScript.healing_amount
		GlobleScript.player_health = min(GlobleScript.player_health, GlobleScript.max_health)  # Prevent overhealing
		print("Health:", GlobleScript.player_health)

		GlobleScript.healing_charges -= 1
		print(str(GlobleScript.healing_charges) + " healing charges left")
	






func _on_timer_timeout():
	dashing = false

func _on_timer_2_timeout():
	can_dash = true



func _on_area_2d_body_entered(body):
	GlobleScript.player_health -= 1
	print(GlobleScript.player_health)


func _on_attack_time_timeout():
	GlobleScript.player_attacking = false


func _on_attack_cooldown_timeout():
	can_attack = true


func _on_can_attack_body_entered(body):
	GlobleScript.player_inattack_range = true


func _on_can_attack_body_exited(body):
	GlobleScript.player_inattack_range = false
