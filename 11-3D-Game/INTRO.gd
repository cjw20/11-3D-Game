extends Control

func _process(delta):
	if Input.is_action_pressed("JUMP"):
		get_tree().change_scene("res://WORLD.tscn")
		