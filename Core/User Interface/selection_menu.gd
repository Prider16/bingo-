extends Control

@onready var create_dialog: AcceptDialog = get_node("CreateDialog")
@onready var creat_dialog_label: Label = create_dialog.get_node("ScrollContainer/Label")
@onready var creat_dialog_playerlist: VBoxContainer = create_dialog.get_node("ScrollContainer/PlayerList")

func update_room(room_id: int) -> void:
	creat_dialog_label.text = "Room Id: " + str(room_id)

func _on_host_pressed() -> void:
	create_dialog.popup_centered()
