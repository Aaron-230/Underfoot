extends Node

@onready var Text = $"../Scoreboard/MarginContainer/Label"
var Coins = 0

func _ready():
	Text.set_text("Coins: " + str(Coins))

func AddPoint():
	Coins += 1
	Text.set_text("Coins: " + str(Coins))

func GetPoint():
	return Coins
