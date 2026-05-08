extends CharacterBody2D

const WALK_SPEED = 200.0
const JUMP_VELOCITY = -350.0
const RUN_SPEED = 400.0

@onready var AnimatedSprite = $Sprite

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	var currentSpeed = WALK_SPEED
	if Input.is_action_just_pressed("Run") and is_on_floor():
		currentSpeed = RUN_SPEED
	
	# Handle jump.
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * currentSpeed
		AnimatedSprite.flip_h = (direction < 0)
	else:
		velocity.x = move_toward(velocity.x, 0, currentSpeed)
	
	update_animations(direction, currentSpeed)
	move_and_slide()

func update_animations(direction, currentSpeed):
	if is_on_floor():
		if direction == 0:
			AnimatedSprite.play("Idle")
		else:
			if currentSpeed == RUN_SPEED:
				AnimatedSprite.play("Run")
			else:
				AnimatedSprite.play("Walk")
	else:
		if velocity.y < 0:
			AnimatedSprite.play("Jump")
