extends CharacterBody2D

@export var speed: float = 100.0
@export var gravity: float = 900.0

var Player = null
var Chase = false

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if Chase and Player:
		var direction = (Player.global_position - global_position).normalized()
		velocity.x = direction.x * speed
		$Sprite.flip_h = direction.x > 0
	else: 
		velocity.x = move_toward(velocity.x, 0, speed)
	
	move_and_slide()

func _on_detection_body_entered(body):
	if body.name == "Blue":
		Player = body
		Chase = true

func _on_detection_body_exited(body):
	if body.name == "Blue":
		Chase = false
