extends "res://Skinny/AbleToShootState.gd"

signal target_reached

export var distance_eps = 15
export var velocity = 1500
var target
var direction

func enter(args=null):
	
	print("enter hook fly")
	var mouse_pos = args["mouse_pos"]
	print(target)
	target = mouse_pos
	direction = (target - owner.position).normalized()
	
	
func handle_input(event=null):
	
	.handle_input(event)
	
func update():
	
	#print(direction)
	owner.move_and_slide(direction * velocity)
	if owner.position.distance_to(target) <= distance_eps:
		
		print("target reached")
		emit_signal("target_reached")
		
