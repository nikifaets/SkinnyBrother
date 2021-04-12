extends Node

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
	

func change_state(new_state):
	
	current_state.exit()
	current_state = states[new_state]
	current_state.enter()

func _on_Idle_idle_move():
	
	change_state("move")


func _on_Move_move_stop():
	
	change_state("idle")
