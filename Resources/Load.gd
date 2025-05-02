extends Node

var piece_Position: Dictionary = {}
var button_position: Array = []
var number = 0

func set_piece_position(piece_position, slot_position):
	piece_Position[piece_position] = slot_position
	#print(slot_position)

func set_button_position(position):
	button_position.push_back(position)
	#print(button_position)

func check_x_line(position) -> int:
	var result: int = 0
	for i in button_position:
		if i.x == position.x:
			result += 1
	return result

func check_y_line(position) -> int:
	var result: int = 0
	for i in button_position:
		if i.y == position.y:
			result += 1
	return result
