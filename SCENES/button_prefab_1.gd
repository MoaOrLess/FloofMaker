extends Control


@onready var option_button: TextureButton = $OptionButton
@onready var option_sprite: Sprite2D = $OptionButton/OptionSprite

var pos_offset = Vector2(10,10)
var base_pos = Vector2(143,143)

func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	


func _on_option_button_pressed() -> void:
	pass

func _on_option_button_button_up() -> void:
	option_sprite.position = base_pos


func _on_option_button_button_down() -> void:
	option_sprite.position = base_pos + pos_offset
