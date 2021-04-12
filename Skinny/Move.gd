extends "res://Skinny/MobileState.gd"

signal move_stop

func update():
	
	if owner.direction == Vector2(0,0):
		
		emit_signal("move_stop")
		
	owner.move_and_collide(owner.direction.normalized() * owner.velocity)
	owner.direction = Vector2(0,0)
	
func enter(args=null):
	
	print("enter move")
	
func exit():
	
	print("exit move")
