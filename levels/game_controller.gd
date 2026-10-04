extends Node

var score: int = 0

signal score_changed(new_score: int)

func add_points(amount: int) -> void:
	score += amount
	# Emit the signal and pass the new score value along
	score_changed.emit(score)
