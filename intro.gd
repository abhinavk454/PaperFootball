extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Player.play("Fade In")
	await get_tree().create_timer(6).timeout
	$Player.play("Fade Out")
	await get_tree().create_timer(5).timeout
	# TODO : Replace below with scene
	get_tree().quit()
