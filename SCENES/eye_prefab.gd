extends Node2D

@onready var eye_sprite: Sprite2D = $EyeSprite
const EYE_STARE = preload("res://ART/EYES ART/Eye Stare.png")
const EYE_CROSSED = preload("res://ART/EYES ART/Eye Crossed.png")

var eye_mirror
var texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	eye_sprite.texture = EYE_CROSSED
	eye_mirror = Sprite2D.new()
	add_child(eye_mirror)
	eye_mirror.texture = EYE_CROSSED
	eye_mirror.flip_h = true
	eye_mirror.position = Vector2(-139,0)
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	sprite_changed()
	
func sprite_changed():
	remove_child(eye_mirror)
	add_child(eye_mirror)
