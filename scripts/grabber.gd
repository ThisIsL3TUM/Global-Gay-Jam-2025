extends Area2D
# ALL JANK NO LOGICAL CODE
var contacts = []
var bubble_1
var attached = false
var object_on_claw
var claw
@export var claw_down_distance = 40
@export var claw_speed = 10
var destination = Vector2.ZERO
var moves_to_make = 0
var claw_timer_running = false
var up = false
var just_attached = false
var moves_to_detach

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bubble_1 = get_node("/root/Node2D2/booble")
	claw = get_node("/root/Node2D2/claw")





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("grab") && moves_to_make == 0:
		#print("yes")
		#code for birnging claw down
		#move the arm down
		#amount of moves to make
		moves_to_make = claw_down_distance / claw_speed
		moves_to_detach = moves_to_make +1
		just_attached = false
		self.global_position
	if Input.is_action_pressed("left") && Input.is_action_pressed("right") && moves_to_make == 0:
		#code for birnging claw down
		#move the arm down
		#amount of moves to make
		moves_to_make = claw_down_distance / claw_speed
		moves_to_detach = moves_to_make +1
		just_attached = false
		self.global_position
	if moves_to_make != 0 && claw_timer_running == false:
		claw_timer_running = true
		await get_tree().create_timer(0.60).timeout
		claw_timer_running = false
		#print("gay")
		if up == false:
			claw.global_position.y += claw_speed
		if up == true:
			claw.global_position.y -= claw_speed
		
		print(attached)
		print(just_attached)
		print(moves_to_detach)
		
		moves_to_make -= 1
		moves_to_detach -=1
		
		
		
		if moves_to_detach == 0 && just_attached == false:
			
			attached = false
			just_attached = false
		if moves_to_make == 0 && up == false:
			turn_around()
		if moves_to_make== 0 && up == true:
			up = false
			just_attached = false
			
		#if moves_to_detach == 0 && just_attached == false && up == false:
			#attached = false
			#just_attached = false
			#
			#turn_around()
		#if moves_to_make == 0 && up == true:
			#up = false
		
	if attached == true:
		object_on_claw.global_position = self.global_position


func turn_around():
	up = true
	moves_to_make = claw_down_distance / claw_speed
	pass


func _on_booble_area_entered(area: Area2D) -> void:
	object_on_claw = bubble_1
	attached = true
	just_attached = true
	pass
