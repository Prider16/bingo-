extends Node2D

var number: int = 13
var x_checks = 0
var y_checks: int = 0

func _on_texture_button_pressed() -> void:
	Load.set_button_position($".".position)
	Load.number = number
	var y_totals = Load.check_y_line($".".position)
	var x_totals = Load.check_x_line($".".position)
	#print(y_totals)
	#print(x_totals)
	if y_totals == 5:
		y_checks = 5
	if x_totals == 5:
		x_checks = 5
	$TextureButton.disabled = true

func get_x_checks() -> int:
	return x_checks

func get_y_checks() -> int:
	return y_checks

func set_x_checks(value):
	x_checks = value

func set_y_checks(value):
	y_checks = value
