extends Node

var Coins = 0
@onready var Text = $"../Scoreboard/MarginContainer/Label"

func _ready():
	Text.set_text("Coins: " + str(Coins))

func AddPoint():
	Coins += 20
	Text.set_text("Coins: " + str(Coins))
