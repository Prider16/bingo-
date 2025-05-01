extends Node2D

var piece_in_slot = false
@onready var borders: Node2D = %Borders

func Border_occupied() -> void:
	borders.set_filled_border()
