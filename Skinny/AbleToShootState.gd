extends "res://Skinny/StateBase.gd"


func handle_input(event=null):
	
	if Input.is_action_just_pressed("left_button"):
			
		print("shoot main")
		get_parent().emit_signal("shoot_main", get_viewport().get_mouse_position())
		
	if Input.is_action_just_pressed("right_button"):
		
		var hook_cooldown = owner.get_node("Hook").get_node("Cooldown")
		
		print("shoot hook")
		if hook_cooldown.get_time_left() == 0:
			get_parent().emit_signal("shoot_hook", get_viewport().get_mouse_position())
