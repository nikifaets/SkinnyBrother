extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var BulletScene = preload("res://Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	
	pass
	
func _input(event):
	
	if event is InputEventMouseButton:
		
		if event.button_index == BUTTON_LEFT and not event.is_pressed():
			
			shoot_bullet(event.global_position)


func shoot_bullet(target):
	
	var bullet = BulletScene.instance()
	bullet.position = self.position
	bullet.set_target(target)
	get_tree().root.add_child(bullet)
