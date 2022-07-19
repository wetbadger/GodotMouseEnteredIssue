extends Control

var window = load("res://UI/Classes/Window.tscn")
var bColorPicker = load("res://UI/Panes/ColorPicker.tscn")

func _on_Button_button_up():
	var w = window.instance()
	
	w.set_title("Color Picker")
	
	var bc = bColorPicker.instance()
	bc.set_button(self)
	w.add_element(bc)
	
	position_window(w)
	get_tree().get_current_scene().add_child(w)
	
func set_color(color):
	get_node("ColorRect").color = color
	
func position_window(w):
	var mouse_pos = get_global_mouse_position()
	var viewport = get_viewport()

	var new_pos
	if mouse_pos.x >= viewport.size.x / 2:
		new_pos = Vector2(mouse_pos.x - 50, mouse_pos.y)
	elif mouse_pos.x < viewport.size.x / 2:
		new_pos = Vector2(mouse_pos.x + 50, mouse_pos.y)
		
	if mouse_pos.y >= viewport.size.y / 2:
		new_pos.y -= 50
	elif mouse_pos.y < viewport.size.y / 2:
		new_pos.y += 50
		
	w.set_global_position(new_pos)
