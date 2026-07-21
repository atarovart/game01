extends CharacterBody2D


var hits_left: int = 3

func take_damage():
	hits_left -= 1
	
	# Если хиты закончились, враг исчезает
	if hits_left <= 0:
		queue_free()
