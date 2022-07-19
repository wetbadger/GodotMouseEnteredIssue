extends Control

class_name Window

func add_element(elem):
	get_node("PanelContainer").add_child(elem)
	
func set_title(text):
	get_node("TitleBar").get_node("HBoxContainer/Bar/Label").set_text(text)

