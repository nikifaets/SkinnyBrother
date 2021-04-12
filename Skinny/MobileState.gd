extends "AbleToShootState.gd"

	
func handle_input(event=null):
	
	.handle_input(event)
	
	if Input.is_action_pressed("ui_up"):
		
		owner.direction += Vector2(0, -1)
		
	if Input.is_action_pressed("ui_down"):
		
		owner.direction += Vector2(0, 1)
		
	if Input.is_action_pressed("ui_right"):
		
		owner.direction += Vector2(1, 0)
		
	if Input.is_action_pressed("ui_left"):
		
		owner.direction += Vector2(-1, 0)
			
