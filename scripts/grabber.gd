extends Area2D
# ALL JANK NO LOGICAL CODE
var contacts = []
var bubble_1
var attached = false
var object_on_claw
var claw
@export var claw_down_distance = 100
@export var claw_speed = 20
var destination = Vector2.ZERO
var moves_to_make = 0
var claw_timer_running = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bubble_1 = get_node("/root/Node2D/bubble_1_sprite")
	claw = get_node("/root/Node2D/claw")


	if Input.is_action_just_pressed("grab"):
		print("yes")
		#code for birnging claw down
		#move the arm down
		#amount of moves to make
		moves_to_make = claw_down_distance / claw_speed
		self.global_position
		attached = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("grab"):
		print("yes")
		#code for birnging claw down
		#move the arm down
		#amount of moves to make
		moves_to_make = claw_down_distance / claw_speed
		self.global_position
		attached = false
	
	if moves_to_make != 0 && claw_timer_running == false:
		claw_timer_running = true
		await get_tree().create_timer(1.0).timeout
		claw_timer_running = false
		print("gay")
		claw.global_position.y += claw_speed
		moves_to_make -= 1
		
	if attached == true:
		object_on_claw.global_position = self.global_position




func _on_grabable_area_area_entered(area: Area2D) -> void:
	object_on_claw = bubble_1
	attached = true
