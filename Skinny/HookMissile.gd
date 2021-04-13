extends KinematicBody2D


export var velocity = 50
var target = null
var direction
var in_flight = false
var distance_eps = 150
var dist_to_target

var default_pos

signal hook_landed(target)

func _ready():
	
	default_pos = position
	
func _physics_process(delta):
	
	if not in_flight:
		
		if not visible:
			return
		
		elif target != null:
			
			global_position = target
	
	if global_position.distance_to(target) < distance_eps:
		
		velocity = 15
	else: 
		velocity = global_position.distance_to(target) / 7
	
	move_and_collide(direction * velocity)

	if global_position.distance_to(target) < distance_eps:
		
		emit_signal("hook_landed", target)
		in_flight = false
		
		
func shoot(target):
	
	self.target = target
	self.dist_to_target = global_position.distance_to(target)
	self.direction = (target - global_position).normalized()
	self.in_flight = true	


func _on_FlyToHook_target_reached():
	
	position = default_pos
	visible = false
