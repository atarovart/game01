extends CharacterBody2D
const SEED = preload("res://weapons/seed.tscn")

const SPEED = 150.0
func shot(): 
	var seedd = SEED.instantiate()
	add_child(seedd)
	
func _physics_process(delta: float):
	if Input.is_action_just_pressed("ui_accept"):
		shot()
		
	var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_vector * SPEED

	move_and_slide()
	

		
	
