extends Node

const SERVER_ADDRESS: String = "127.0.0.1"
const SERVER_PORT: int = 5466

var my_info: Dictionary = {
	name = "Dhruv",
	character_index = 0,
	instance = null,
}

var player_info: Dictionary = {}

var is_creator:bool = false
var room: int

func create_room() -> void:
	is_creator = true
	connect_to_server()

func connect_to_server(room_id: int = 0) -> void:
	room = room_id
	
	var peer:= ENetMultiplayerPeer.new()
	if peer.create_client(SERVER_ADDRESS, SERVER_PORT):
		printerr("Error creating new client")
	multiplayer.multiplayer_peer = peer
	
	#if get_tree().connect("connected_to_server", Callable(self, "_connected_ok")):
		#printerr("Failed to connect connected_server")
	#if get_tree().connect("connection_failed", Callable(self, "_connected_fail")):
		#printerr("Failed to connect connection_failed")
	#if get_tree().connect("server_diconnected", Callable(self, "_server_diconnected")):
		#printerr("Failed to connect server_diconnected")
	
	if multiplayer.connected_to_server.connect(_connected_ok):
		printerr("Failed to connect connected_server")
	if multiplayer.connection_failed.connect(_connected_fail):
		printerr("Failed to connect connection_failed")
	if multiplayer.server_disconnected.connect(_server_disconnected):
		printerr("Failed to connect server_diconnected")
	

func _connected_ok() -> void:
	print("Connected to server!")
	if is_creator:
		rpc_id(1, "room_creating", my_info)

func _connected_fail() -> void:
	print("Connection to server Failed!")

func _server_disconnected() -> void:
	print("Server disconnected!")

@rpc 
func update_room(room_id: int) -> void:
	if get_tree().current_scene.name == "selection_menu":
		get_tree().current_scene.update_room(room_id)
