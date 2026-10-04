extends CharacterBody2D

@export var speed = 250
var angularSpeed = PI
var screen_size

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var direction := Input.get_vector("move-left", "move-right", "move-up", "move-down")
	
	if direction != Vector2.ZERO:
		velocity = direction*speed
	else:
		velocity = velocity.move_toward(Vector2.ZERO, speed)
	move_and_slide()
	
	
