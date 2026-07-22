extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta):
	var collision = move_and_collide(Vector2.RIGHT * SPEED * delta)

	if collision:
		var enemy = collision.get_collider()

		if enemy.has_method("take_damage"):
			enemy.take_damage()

		queue_free()
