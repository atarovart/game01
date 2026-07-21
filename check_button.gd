extends CheckButton

func _ready() -> void:
	# Подключаем сигнал нажатия к функции перезагрузки
	pressed.connect(_on_pressed)

func _on_pressed() -> void:
	get_tree().reload_current_scene()
