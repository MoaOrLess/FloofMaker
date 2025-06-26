extends Node2D


@onready var EYE_STARE = preload("res://ART/EYES ART/Eye Stare.png")
@onready var EYE_ROUND = preload("res://ART//EYES ART/Eye Round.png")
@onready var BUTTON_A = preload("res://ART/Button A.png")

var texture_item: TextureRect
signal click


func _ready() -> void:
	spawn_button()
	spawn_texture(EYE_STARE)


func _process(delta: float) -> void:
	pass

func spawn_texture(text):
	var sprite_inst = Sprite2D.new()
	add_child(sprite_inst)
	#spirte_inst.set_texture(EYE_STARE)
	sprite_inst.texture = text
	sprite_inst.scale = Vector2(0.5,0.5)
	sprite_inst.position = Vector2(100,100)
	
	#if button_is_pressed(text):
		#remove_child(sprite_inst)

func spawn_button():
	var button_inst = Button.new()
	var text_inst = TextureRect.new()
	add_child(button_inst)
	button_inst.icon = BUTTON_A
	button_inst.position = Vector2(200,200)
	button_inst.add_child(text_inst)
	text_inst.texture = EYE_ROUND
	#var text = text_inst
	button_inst.pressed.connect(button_is_pressed.bind(text_inst.texture))
	

func button_is_pressed(text):
	#click.emit()
	spawn_texture(text)
	print('yo')
