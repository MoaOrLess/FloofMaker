extends Node2D

@onready var iris_sprite: Sprite2D = $IrisSprite

const EYE_CROSSED_IRIS = preload("res://ART/EYES ART/IRIS/Eye Crossed Iris.png")

var iris_mirror
var texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	iris_sprite.texture = EYE_CROSSED_IRIS
	iris_mirror = Sprite2D.new()
	add_child(iris_mirror)
	iris_mirror.texture = EYE_CROSSED_IRIS
	iris_mirror.flip_h = true
	iris_mirror.position = Vector2(-139,0)
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	sprite_changed()
	
func sprite_changed():
	remove_child(iris_mirror)
	add_child(iris_mirror)
