extends CharacterBody2D


const SPEED = 150.0

func _physics_process(delta):
	# Получаем направление движения: -1 вверх, 1 вниз
	var input_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Устанавливаем скорость
	velocity = input_vector * SPEED

	# Двигаем персонажа
	move_and_slide()
