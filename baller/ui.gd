extends Node2D

func _ready():
	update_health_ui()

func _process(delta):
	# Ensure player health doesn't exceed max
	update_health()
	# Update the hearts based on health
	update_health_ui()

func update_health_ui():
	# Default: Hide all hearts
	get_node("Heart100-75").visible = false
	get_node("Heart75-50").visible = false
	get_node("Heart50-25").visible = false
	get_node("Heart25-10").visible = false
	get_node("Heart10-0").visible = false
	
	if GlobleScript.player_health >= GlobleScript.max_health:
		GlobleScript.player_health = GlobleScript.max_health

	# Show the appropriate heart based on player health
	if GlobleScript.player_health >= GlobleScript.max_health * 0.75:
		get_node("Heart100-75").visible = true
	elif GlobleScript.player_health >= GlobleScript.max_health * 0.50:
		get_node("Heart75-50").visible = true
	elif GlobleScript.player_health >= GlobleScript.max_health * 0.25:
		get_node("Heart50-25").visible = true
	elif GlobleScript.player_health >= GlobleScript.max_health * 0.10:
		get_node("Heart25-10").visible = true
		get_node("Heart10-0").visible = false
	if GlobleScript.player_health <= GlobleScript.max_health * 0.10:
		get_node("Heart10-0").visible = true
		get_node("Heart25-10").visible = false


func update_health():
	if GlobleScript.player_health > GlobleScript.max_health:
		GlobleScript.player_health = GlobleScript.max_health - 1
