extends Node

@onready var points_label = %PointsLabel
@export var hearts: Array[Node]

var points: int = 0
var lives: int = 3

func decrease_health():
	lives -= 1
	for h in 3:
		if h < lives:
			hearts[h].show()
		else:
			hearts[h].hide()
	if lives == 0:
		get_tree().reload_current_scene()

func add_point():
	points += 1
	points_label.text = "Points: " + str(points)
