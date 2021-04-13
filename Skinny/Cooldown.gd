extends Timer

export var cooldown = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StateManager_shoot_hook(mouse_pos):
	
	set_wait_time(2)
	print("start timer")
	start()
