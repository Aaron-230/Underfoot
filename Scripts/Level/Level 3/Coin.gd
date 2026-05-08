extends Area2D

@onready var GameManager = $"../../Game Manager"

func _on_body_entered(body):
	GameManager.AddPoint()
	queue_free()
