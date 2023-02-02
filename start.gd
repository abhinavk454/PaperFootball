extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$StartButton.connect("pressed",_on_touched)
	$ExitButton.connect("pressed",_on_touched)

func _on_touched():
	get_tree().quit()
