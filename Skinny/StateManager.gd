extends Node

var able_to_shoot_state = preload("res://Skinny/AbleToShootState.gd")
signal shoot_main(mouse_pos)
signal shoot_hook(mouse_pos)

onready var states = {
	
	"move" : $Move,
	"fly_to_hook" : $FlyToHook,
	"idle" : $Idle
}

var current_state

func _ready():
	
	current_state = states["idle"]
	


func _physics_process(delta):
	
	current_state.handle_input()
	current_state.update()

	
func _input(event):
	pass
	

func change_state(new_state, args=null):
	
	current_state.exit()
	current_state = states[new_state]
	current_state.enter(args)

func _on_Idle_idle_move():
	
	change_state("move")


func _on_Move_move_stop():
	
	change_state("idle")


func _on_StateManager_shoot_main(mouse_pos):
	
	print("shoot at ", mouse_pos)


func _on_StateManager_shoot_hook(mouse_pos):
	
	change_state("fly_to_hook", {"mouse_pos" : mouse_pos})
