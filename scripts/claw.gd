extends Area2D

@export var speed = 60
var minx = Vector2.ZERO
var maxx = Vector2.ZERO

func _ready() -> void:
	minx.x = -135
	minx.y = -999
	maxx.x = 140
	maxx.y = 999

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("right"):
		velocity.x += 1
	velocity = velocity * speed
	position += velocity * delta
	position = position.clamp(minx,maxx)
