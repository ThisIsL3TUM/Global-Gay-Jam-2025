extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalBus.claw_open.connect(change_claw_state)


func change_claw_state(state):
	if state == false:
		set_frame_and_progress(0,0.1)
	if state == true:
		set_frame_and_progress(3,0.1)
