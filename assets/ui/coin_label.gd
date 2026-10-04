extends Label

var score: int = 0

func _ready() -> void:
	# 1. Find the controller node (adjust path if needed)
	var controller = get_node("res://levels/GameController.tscn")
	
	# 2. Connect the controller's signal to our local function
	controller.score_changed.connect(_on_score_changed)
	
	# 3. Set the initial text
	text = "Coins Collected: " + str(controller.score)

func _on_score_changed(new_score: int) -> void:
	text = "Coins Collected: " + str(new_score)
