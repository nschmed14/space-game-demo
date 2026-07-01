extends Control

@export var level_scene: PackedScene = load("res://scenes/level.tscn")

func _ready():
	$"CenterContainer/VBoxContainer/YOUR SCORE".text = $"CenterContainer/VBoxContainer/YOUR SCORE".text + str(Global.score)
	$GameOver.play()
		
func _input(event):
	if event.is_action_pressed("respawn"):
			get_tree().change_scene_to_packed(level_scene)
