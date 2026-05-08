extends Node2D

const SPEED = 200
var direction = 1

@onready var raycast_right = $RayCastRight
@onready var raycast_left = $RayCastLeft
@onready var sprite = $Sprite

func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
		sprite.flip_h = true
	if raycast_left.is_colliding():
		direction = 1
		sprite.flip_h = false
	
	position.x += direction * SPEED * delta
