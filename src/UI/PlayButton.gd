tool
extends Button

export(String, FILE) var next_scene_path: String = ""

func _on_button_up() -> void:
	#you can click and drag a scene into the parentheses
	get_tree().change_scene(next_scene_path)


func _get_configuration_warning() -> String:
	return "next_scene_path must be set for button to work" if next_scene_path == "" else ""
