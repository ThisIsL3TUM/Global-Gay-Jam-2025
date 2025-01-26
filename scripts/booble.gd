extends Node
class_name bubble

@export var ID = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_socket_area_area_entered(area: Area2D) -> void:
	#print(area.name)
	if area.name == "booble":
		SignalBus.cool.emit(1)
	if area.name == "booble_2":
		SignalBus.cool.emit(2)
	if area.name == "booble_3":
		SignalBus.cool.emit(3)
	if area.name == "pocket_1":
		SignalBus.pocket.emit(1)
	pass
