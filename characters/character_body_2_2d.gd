extends CharacterBody2D

var hits_left := 1
var is_dead := false

@onready var anim = $AnimationPlayer

func _ready():
	anim.stop()

	anim.play("Idle")
	
	print(name, " ", $AnimationPlayer.get_instance_id())

func take_damage():
	if is_dead:
		return

	hits_left -= 1

	if hits_left <= 0:
		is_dead = true

		$CollisionShape2D.set_deferred("disabled", true)

		var spawner = get_tree().current_scene.get_node("EnemySpawner")

		queue_free()

		spawner.spawn_enemy.call_deferred()
