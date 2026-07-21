extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta):
	move_and_collide(Vector2.RIGHT * SPEED * delta)
