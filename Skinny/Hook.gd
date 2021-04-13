extends Node2D

	

func _on_StateManager_shoot_hook(mouse_pos):
	

	$HookMissile.visible = true
	$HookMissile.shoot(mouse_pos)
	


func _on_HookMissile_hook_landed(target):
	
	pass
	#$HookMissile.visible = false

