extends Node2D

const COLLISION_MASK = 1
const COLLISION_MASK_SLOT = 2

var draging_piece
var screen_size
var is_hovering_on_piece

func _ready() -> void:
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if draging_piece:
		var mouse_poss = get_global_mouse_position()
		draging_piece.position = Vector2(clamp(mouse_poss.x,0,screen_size.x),clamp(mouse_poss.y,0,screen_size.y))

#Checking Mouse and selecting the card
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			var piece = check_piece()
			if piece:
				start_drag(piece)
		else:
			if draging_piece:
				finish_drag()

func start_drag(piece):
	draging_piece = piece
	piece.scale = Vector2(1,1)


func finish_drag():
	draging_piece.scale = Vector2(1.05,1.05)
	var piece_slot_found = check_slot()
	if piece_slot_found and not piece_slot_found.piece_in_slot:
		draging_piece.position = piece_slot_found.position
		draging_piece.get_node("Area2D/CollisionShape2D").disabled = true
		piece_slot_found.piece_in_slot = true
		piece_slot_found.Border_occupied()
		Load.set_piece_position(draging_piece.piece_number,piece_slot_found.position)
	draging_piece = null


func connect_piece_signal(piece):
	piece.connect("hovered",on_hovered_over_piece)
	piece.connect("hovered_off",on_hovered_off_piece)

func on_hovered_over_piece(piece):
	if !is_hovering_on_piece:
		is_hovering_on_piece = true
		highlight_piece(piece, true)

func on_hovered_off_piece(piece):
	if !draging_piece:
		highlight_piece(piece, false)
		var new_hover_card = check_piece()
		if new_hover_card:
			highlight_piece(new_hover_card, true)
		else:
			is_hovering_on_piece = false

func highlight_piece(piece, hovered):
	if hovered:
		piece.scale = Vector2(1.05,1.05)
		piece.z_index = 2
	else:
		piece.scale = Vector2(1,1)
		piece.z_index = 1

#Raycast checking for the pieces
func check_piece():
	var space_state = get_world_2d().direct_space_state
	var parameters = PhysicsPointQueryParameters2D.new()
	parameters.position = get_global_mouse_position()
	parameters.collide_with_areas = true
	parameters.collision_mask = COLLISION_MASK
	var result = space_state.intersect_point(parameters)
	if result.size() > 0:
		return get_piece_with_highest_z_index(result)
	return null

func check_slot():
	var space_state = get_world_2d().direct_space_state
	var parameters = PhysicsPointQueryParameters2D.new()
	parameters.position = get_global_mouse_position()
	parameters.collide_with_areas = true
	parameters.collision_mask = COLLISION_MASK_SLOT
	var result = space_state.intersect_point(parameters)
	if result.size() > 0:
		return result[0].collider.get_parent()
	return null

func get_piece_with_highest_z_index(piece):
	var highest_z_piece = piece[0].collider.get_parent()
	var highest_z_index = highest_z_piece.z_index
	
	for i in range(1, piece.size()):
		var current_piece = piece[i].collider.get_parent()
		if current_piece.z_index > highest_z_index:
			highest_z_piece = current_piece
			highest_z_index = current_piece.z_index
	return highest_z_piece
