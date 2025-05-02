extends Node2D

@onready var button: Node2D = $Button_manager/Button
@onready var button_2: Node2D = $Button_manager/Button2
@onready var button_3: Node2D = $Button_manager/Button3
@onready var button_4: Node2D = $Button_manager/Button4
@onready var button_5: Node2D = $Button_manager/Button5
@onready var button_6: Node2D = $Button_manager/Button6
@onready var button_7: Node2D = $Button_manager/Button7
@onready var button_8: Node2D = $Button_manager/Button8
@onready var button_9: Node2D = $Button_manager/Button9
@onready var button_10: Node2D = $Button_manager/Button10
@onready var button_11: Node2D = $Button_manager/Button11
@onready var button_12: Node2D = $Button_manager/Button12
@onready var button_13: Node2D = $Button_manager/Button13
@onready var button_14: Node2D = $Button_manager/Button14
@onready var button_15: Node2D = $Button_manager/Button15
@onready var button_16: Node2D = $Button_manager/Button16
@onready var button_17: Node2D = $Button_manager/Button17
@onready var button_18: Node2D = $Button_manager/Button18
@onready var button_19: Node2D = $Button_manager/Button19
@onready var button_20: Node2D = $Button_manager/Button20
@onready var button_21: Node2D = $Button_manager/Button21
@onready var button_22: Node2D = $Button_manager/Button22
@onready var button_23: Node2D = $Button_manager/Button23
@onready var button_24: Node2D = $Button_manager/Button24
@onready var button_25: Node2D = $Button_manager/Button25

@onready var b: ColorRect = $Lines/B
@onready var i: ColorRect = $Lines/I
@onready var n: ColorRect = $Lines/N
@onready var g: ColorRect = $Lines/G
@onready var o: ColorRect = $Lines/O

@onready var label: Label = $Label

func _ready() -> void:
	button_possitions(button)
	button_possitions(button_2)
	button_possitions(button_3)
	button_possitions(button_4)
	button_possitions(button_5)
	button_possitions(button_6)
	button_possitions(button_7)
	button_possitions(button_8)
	button_possitions(button_9)
	button_possitions(button_10)
	button_possitions(button_11)
	button_possitions(button_12)
	button_possitions(button_13)
	button_possitions(button_14)
	button_possitions(button_15)
	button_possitions(button_16)
	button_possitions(button_17)
	button_possitions(button_18)
	button_possitions(button_19)
	button_possitions(button_20)
	button_possitions(button_21)
	button_possitions(button_22)
	button_possitions(button_23)
	button_possitions(button_24)
	button_possitions(button_25)

func button_possitions(button):
	button.position = Load.piece_Position[str(button.number)]

func bingo_check():
	if b.visible == false:
		b.visible = true
	elif i.visible == false:
		i.visible = true
	elif n.visible == false:
		n.visible = true
	elif g.visible == false:
		g.visible = true
	elif o.visible == false:
		o.visible = true

func _process(delta: float) -> void:
	label.text = str(Load.number)
	if button.get_x_checks() == 5:
		bingo_check()
		button.set_x_checks(0)
	if button.get_y_checks() == 5:
		bingo_check()
		button.set_y_checks(0)
	if button_2.get_x_checks() == 5:
		bingo_check()
		button_2.set_x_checks(0)
	if button_2.get_y_checks() == 5:
		bingo_check()
		button_2.set_y_checks(0)
	if button_3.get_x_checks() == 5:
		bingo_check()
		button_3.set_x_checks(0)
	if button_3.get_y_checks() == 5:
		bingo_check()
		button_3.set_y_checks(0)
	if button_4.get_x_checks() == 5:
		bingo_check()
		button_4.set_x_checks(0)
	if button_4.get_y_checks() == 5:
		bingo_check()
		button_4.set_y_checks(0)
	if button_5.get_x_checks() == 5: 
		bingo_check()
		button_5.set_x_checks(0)
	if button_5.get_y_checks() == 5:
		bingo_check()
		button_5.set_y_checks(0)
	if button_6.get_x_checks() == 5:
		bingo_check()
		button_6.set_x_checks(0)
	if button_6.get_y_checks() == 5:
		bingo_check()
		button_6.set_y_checks(0)
	if button_7.get_x_checks() == 5:
		bingo_check()
		button_7.set_x_checks(0)
	if button_7.get_y_checks() == 5:
		bingo_check()
		button_7.set_y_checks(0)
	if button_8.get_x_checks() == 5:
		bingo_check()
		button_8.set_x_checks(0)
	if button_8.get_y_checks() == 5:
		bingo_check()
		button_8.set_y_checks(0)
	if button_9.get_x_checks() == 5:
		bingo_check()
		button_9.set_x_checks(0)
	if button_9.get_y_checks() == 5:
		bingo_check()
		button_9.set_y_checks(0)
	if button_10.get_x_checks() == 5:
		bingo_check()
		button_10.set_x_checks(0)
	if button_10.get_y_checks() == 5:
		bingo_check()
		button_10.set_y_checks(0)
	if button_11.get_x_checks() == 5:
		bingo_check()
		button_11.set_x_checks(0)
	if button_11.get_y_checks() == 5:
		bingo_check()
		button_11.set_y_checks(0)
	if button_12.get_x_checks() == 5:
		bingo_check()
		button_12.set_x_checks(0)
	if button_12.get_y_checks() == 5:
		bingo_check()
		button_12.set_y_checks(0)
	if button_13.get_x_checks() == 5:
		bingo_check()
		button_13.set_x_checks(0)
	if button_13.get_y_checks() == 5:
		bingo_check()
		button_13.set_y_checks(0)
	if button_14.get_x_checks() == 5:
		bingo_check()
		button_14.set_x_checks(0)
	if button_14.get_y_checks() == 5:
		bingo_check()
		button_14.set_y_checks(0)
	if button_15.get_x_checks() == 5:
		bingo_check()
		button_15.set_x_checks(0)
	if button_15.get_y_checks() == 5:
		bingo_check()
		button_15.set_y_checks(0)
	if button_16.get_x_checks() == 5:
		bingo_check()
		button_16.set_x_checks(0)
	if button_16.get_y_checks() == 5:
		bingo_check()
		button_16.set_y_checks(0)
	if button_17.get_x_checks() == 5:
		bingo_check()
		button_17.set_x_checks(0)
	if button_17.get_y_checks() == 5:
		bingo_check()
		button_17.set_y_checks(0)
	if button_18.get_x_checks() ==5:
		bingo_check()
		button_18.set_x_checks(0)
	if button_18.get_y_checks() == 5:
		bingo_check()
		button_18.set_y_checks(0)
	if button_19.get_x_checks() == 5:
		bingo_check()
		button_19.set_x_checks(0)
	if button_19.get_y_checks() == 5:
		bingo_check()
		button_19.set_y_checks(0)
	if button_20.get_x_checks() == 5:
		bingo_check()
		button_20.set_x_checks(0)
	if button_20.get_y_checks() == 5:
		bingo_check()
		button_20.set_y_checks(0)
	if button_21.get_x_checks() == 5:
		bingo_check()
		button_21.set_x_checks(0)
	if button_21.get_y_checks() == 5:
		bingo_check()
		button_21.set_y_checks(0)
	if button_22.get_x_checks() == 5:
		bingo_check()
		button_22.set_x_checks(0)
	if button_22.get_y_checks() == 5:
		bingo_check()
		button_22.set_y_checks(0)
	if button_23.get_x_checks() == 5:
		bingo_check()
		button_23.set_x_checks(0)
	if button_23.get_y_checks() == 5:
		bingo_check()
		button_23.set_x_checks(0)
	if button_24.get_x_checks() == 5:
		bingo_check()
		button_24.set_x_checks(0)
	if button_24.get_y_checks() == 5:
		bingo_check()
		button_24.set_y_checks(0)
	if button_25.get_x_checks() == 5:
		bingo_check()
		button_25.set_x_checks(0)
	if button_25.get_y_checks() == 5:
		bingo_check()
		button_25.set_y_checks(0)
	
