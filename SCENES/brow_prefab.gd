extends Node2D


@onready var brow_sprite: Sprite2D = $BrowSprite
const BROW_TEAR = preload("res://ART/BROWS ART/Brow Tear.png")

var brow_mirror
var texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	brow_sprite.texture = BROW_TEAR
	brow_mirror = Sprite2D.new()
	add_child(brow_mirror)
	brow_mirror.texture = BROW_TEAR
	brow_mirror.flip_h = true
	brow_mirror.position = Vector2(-139,0)
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	sprite_changed()
	
func sprite_changed():
	remove_child(brow_mirror)
	add_child(brow_mirror)
