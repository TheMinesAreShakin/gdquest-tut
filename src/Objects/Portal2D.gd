#tool makes code run in the editor
tool
extends Area2D

# $AnimationPlayer is shorthand for get_node("AnimationPlayer")
onready var anim_player: AnimationPlayer = $AnimationPlayer

export var next_scene: PackedScene

func _on_body_entered(body: Node) -> void:
	teleport()

func _get_configuration_warning() -> String:
	return "The next scene property cannot be empty" if not next_scene else ""


func teleport() -> void:
	anim_player.play("FADE_IN")
	#wait for animation to finish (animation finished is a signal)
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_scene)
