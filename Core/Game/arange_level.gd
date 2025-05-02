extends Node2D

@onready var borders: Node2D = %Borders

func _on_start_pressed() -> void:
	if borders.filled_borders == 3:
		get_tree().change_scene_to_file("res://Core/Game/game_screen.tscn")
