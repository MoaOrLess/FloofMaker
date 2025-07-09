extends Control


var pos_offset = Vector2(8,7)
var base_pos = Vector2(101,105)
@onready var category_sprite: Sprite2D = $CategorySprite
@onready var category_button: TextureButton = $"."
@onready var LEARNING_2 = preload("res://SCENES/learning_2.tscn")

func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass



func _on_button_down() -> void:
	category_sprite.position = base_pos + pos_offset


func _on_button_up() -> void:
	category_sprite.position = base_pos


func _on_pressed() -> void:
	pass # Replace with function body.
