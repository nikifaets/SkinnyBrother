extends KinematicBody2D

var target
var direction
export var velocity = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass

func _physics_process(delta):
	
	move_and_collide(velocity * direction)
	
	
func set_target(target):
	
	print(target)
	self.target = target
	self.direction = (self.target - self.position).normalized()
	
	
