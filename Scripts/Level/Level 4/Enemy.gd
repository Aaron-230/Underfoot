extends CharacterBody2D

@export var speed: float = 120.0
@export var jump_force: float = -320.0
@export var gravity: float = 900.0

@onready var sprite: AnimatedSprite2D = $Sprite
@onready var fall_detector: RayCast2D = $FallDetection
@onready var jump_left: RayCast2D = $RayCastLeft
@onready var jump_right: RayCast2D = $RayCastRight

var player = null

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if player:
		var direction = sign(player.global_position.x - global_position.x)
		
		if direction != 0:
			sprite.flip_h = (direction < 0)
			fall_detector.position.x = direction * 15

		if is_on_floor():
			if not fall_detector.is_colliding():
				velocity.x = 0
			else:
				var blocked = (direction > 0 and jump_right.is_colliding()) or (direction < 0 and jump_left.is_colliding())
				
				if blocked:
					velocity.y = jump_force
				
				velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	move_and_slide()

func _on_detection_zone_body_entered(body):
	if body.name == "Blue":
		player = body

func _on_detection_zone_body_exited(body):
	if body.name == "Blue":
		player = null
