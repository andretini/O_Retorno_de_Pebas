extends ColorRect

@export var menu_parent_path : NodePath
@export var cursor_offset : Vector2
@onready var menu_parent := get_node(menu_parent_path)
var cursor_index : int = 0

func get_menu_item_at_index(index : int) -> Control:
	if menu_parent == null:
		return null
	if index >= menu_parent.get_child_count() or index < 0:
		return null
	
	return menu_parent.get_child(index) as Control
	
func _process(delta):
	var input := Vector2.ZERO
	
	if Input.is_action_just_pressed('move_left'):
		input.x -= 1
	if Input.is_action_just_pressed('move_right'):
		input.x += 1
	if Input.is_action_just_pressed('move_up'):
		input.y -= 1
	if Input.is_action_just_pressed('move_down'):
		input.y += 1
		
	if menu_parent is VBoxContainer:
		set_cursor_from_index(cursor_index + input.y)
	elif menu_parent is HBoxContainer:
		set_cursor_from_index(cursor_index + input.x)
	elif menu_parent is GridContainer:
		set_cursor_from_index(cursor_index + input.x+ input.y * menu_parent.columns)
		
	if Input.is_action_just_pressed("select"):
		var current_menu_item := get_menu_item_at_index(cursor_index)
		if current_menu_item != null:
			if current_menu_item.has_method("cursor_select"):
				current_menu_item.cursor_select()
	
func set_cursor_from_index(index: int):
	var menu_item := get_menu_item_at_index(index)
	
	if menu_item == null:
		return
		
	var position = menu_item.global_position
	var size = menu_item.size

	global_position = Vector2(position.x, position.y + size.y / 2.0)  - cursor_offset
	cursor_index= index

	
