extends CharacterBody2D
const SEED = preload("res://weapons/seed.tscn")

const SPEED = 150.0

func _physics_process(delta: float):
	if Input.is_action_just_pressed("ui_accept"):
		shot()
		
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED 
	move_and_slide()
	
func shot(): 
	var seedd = SEED.instantiate()
	
	# 1. Добавляем пулю на уровень, чтобы она не двигалась вместе с игроком
	get_parent().add_child(seedd)
	
	# 2. Переносим её в точку спавна (или используйте global_position + Vector2(20, 0))
	seedd.global_position = global_position + Vector2 (20, 0)
	
	# СТРОКУ "add_child(seedd)" В КОНЦЕ МЫ УДАЛИЛИ
	

		
	
