extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event is InputEventKey:
		if Input.is_action_pressed("right") and Input.is_action_pressed("left"):
			SignalBus.start.emit()
			get_tree().change_scene_to_file("res://crane_testing_but_yes.tscn")
