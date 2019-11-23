extends KinematicBody

var gravity = Vector3.DOWN * 2500
var speed = 20

var velocity = Vector3()


func _physics_process(delta):
	velocity += gravity * delta
	gravity = gravity * 1.0055  #causes ball to accelerate over time
	get_input()
	velocity = move_and_slide(velocity, Vector3.UP)
	if velocity.y == 0:
		get_tree().change_scene("res://GAME OVER.tscn")
	
		
func get_input():	
	velocity.x = 0
	velocity.z = 0
	if Input.is_action_pressed("LEFT"):
		velocity.z += -speed
	if Input.is_action_pressed("RIGHT"):
		velocity.z += speed
	
