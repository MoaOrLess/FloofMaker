extends Control


var pos_offset = Vector2(10,10)
var base_pos = Vector2(143,143)
@onready var category_sprite: Sprite2D = $CategoryButton/CategorySprite
@onready var LEARNING_2 = preload("res://SCENES/learning_2.tscn")

func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_option_button_pressed() -> void:
	pass

func _on_option_button_button_up() -> void:
	category_sprite.position = base_pos


func _on_option_button_button_down() -> void:
	category_sprite.position = base_pos + pos_offset
