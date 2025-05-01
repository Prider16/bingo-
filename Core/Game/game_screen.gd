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



func button_possitions(button):
	button.position = Load.piece_Position[str(button.number)]


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


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
