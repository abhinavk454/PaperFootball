extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Player.play("Fade In")
	$Audio.play()
	await get_tree().create_timer(6).timeout
	$Player.play("Fade Out")
	await get_tree().create_timer(4).timeout
	$Audio.stop()
	get_tree().change_scene_to_file("res://start.tscn")
