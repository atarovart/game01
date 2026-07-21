extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta):
	move_and_collide(Vector2.RIGHT * SPEED * delta)

	# move_and_slide() возвращает true при столкновении
	var collided = move_and_slide()
	
	if collided:
		# Получаем информацию о последнем столкновении
		var collision = get_last_slide_collision()
		var object_we_hit = collision.get_collider()
		
		# Проверяем, есть ли у объекта функция получения урона
		if object_we_hit.has_method("take_damage"):
			object_we_hit.take_damage() # Наносим 1 урон врагу
			
		# Пуля уничтожается при любом столкновении
		queue_free() 
