extends Node

#var slot_position: Vector2
#var piece_position: int
var piece_Position: Dictionary = {}

func set_piece_position(piece_position, slot_position):
	piece_Position[piece_position] = slot_position
