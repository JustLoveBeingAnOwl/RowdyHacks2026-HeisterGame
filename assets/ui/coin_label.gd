extends Label

var score: int = 0

func _ready() -> void:
	var controller = get_node("../../GameController")
	controller.score_changed.connect(_on_score_changed)
	_on_score_changed(controller.score)

func _on_score_changed(new_score: int) -> void:
	text = "Coins Collected: " + str(new_score)
