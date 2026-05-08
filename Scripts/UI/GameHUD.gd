extends CanvasLayer

@export_file("*.tscn") var nextLevel: String

@onready var animation = $Animation
@onready var Intro = $Intro
@onready var Finish = $Finish
@onready var Death = $Death
@onready var timer = $Intro/Timer

func _ready():
	Intro.show()
	timer.start()
	animation.play("Fade")
	Finish.hide()
	Death.hide()
	
func showFinish():
	get_tree().paused = true
	Finish.show()

func showDeath():
	get_tree().paused = true
	Death.show()

func _on_next_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file(nextLevel)

func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_exit_pressed():
	get_tree().paused = false
	get_tree().quit()


func _on_timer_timeout():
	Intro.hide()
