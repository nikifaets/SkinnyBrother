extends "res://Skinny/MobileState.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal idle_move

func update():
	
	if owner.direction != Vector2(0,0):
		
		emit_signal("idle_move")
	
func exit():
	
	#print("exit idle")
	pass
	
func enter(args=null):
	
	pass
	#print("enter idle")
	
	



