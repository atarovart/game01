extends Node

const ENEMY_SCENE = preload("res://characters/character_body2_2d.tscn")

func spawn_enemy():
	# Ждем 3 секунды
	await get_tree().create_timer(3.0).timeout

	var enemy = ENEMY_SCENE.instantiate()

	var screen_size = get_viewport().get_visible_rect().size

	enemy.position = Vector2(
		randi_range(181, int(screen_size.x)),
		randi_range(0, 230)
	)
	

	print("Spawn enemy")
	
	get_parent().add_child(enemy)
