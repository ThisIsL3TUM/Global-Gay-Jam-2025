extends Node


signal entered_bowl(booble_ID, slot_ID)
signal exited_bowl
signal cool(bubble_ID)
signal pocket(pocket_ID)
signal start
var main_start = false

func _ready() -> void:
	start.connect(start_timer)

func start_timer():
	await get_tree().create_timer(0.60).timeout
	main_start = true
	print("yes")
	
