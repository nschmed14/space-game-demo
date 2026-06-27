extends Area2D

#spawn logic
func _ready():
	var rng := RandomNumberGenerator.new()
	var width = get_viewport().get_visible_rect().size[0]
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-150, -50)
	position = Vector2(random_x, random_y)
	scale = Vector2(0.5, 0.5)
	var path: String = "res://PNG/Sprites/Meteors/spaceMeteors_00" + str(rng.randi_range(1,4)) + ".png"
	$Sprite2D.texture = load(path)
	
#movement variable creation and randomization
var rng := RandomNumberGenerator.new()
var speed := rng.randi_range(200, 500)
var spin := (rng.randf_range(-0.2, 0.2))
var angle:= (rng.randf_range(-1, 1))

#active meteor movement
func _process(delta):
	position += Vector2(angle, 1.0) * speed * delta
	rotate(spin)
	
func _on_body_entered(body):
	print('meteor entered')
