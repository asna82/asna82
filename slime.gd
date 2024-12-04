extends CharacterBody2D
var PLAYER
func _ready():
	PLAYER = get_node("/root/GAME/PLAYER")
func _physics_process(delta):
	var direction = global_position.direction_to(PLAYER.global_position)
	velocity = direction*300.0
	move_and_slide()
	
	
