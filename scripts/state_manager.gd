extends Node

var placed_bubbles = {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalBus.entered_bowl.connect(enter_bowl)
	SignalBus.exited_bowl.connect(exit_bowl)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func enter_bowl(booble_ID,bowl_ID):
	pass

func exit_bowl(booble_ID,bowl_ID):
	pass
