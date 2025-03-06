extends Node2D


@onready var EYE_STARE = preload("res://ART/Eye Stare.png")
@onready var EYE_ROUND = preload("res://ART/Eye Round.png")
@onready var EYE_CLASSIC = preload("res://ART/Eye Classic.png")
@onready var BUTTON_A = preload("res://ART/Button A.png")
@onready var BUTTON_OFF = preload("res://ART/Button Off.png")
@onready var BUTTON_ON = preload("res://ART/Button On.png")

var current_sprite: Sprite2D = null
var texture_item: TextureRect
signal click


func _ready() -> void:
	spawn_button()
	spawn_texture(EYE_STARE)


func _process(delta: float) -> void:
	pass

func spawn_texture(text):
	#Remove sprite if it exists
	if current_sprite != null:
		remove_child(current_sprite)
		current_sprite.queue_free()  
	
	#Make a new sprite
	var sprite_inst = Sprite2D.new()
	add_child(sprite_inst)
	
	#spirte_inst.set_texture(EYE_STARE)
	sprite_inst.texture = text
	sprite_inst.scale = Vector2(0.5,0.5)
	sprite_inst.position = Vector2(100,100)
	
	#Store new sprite
	current_sprite = sprite_inst
	

func spawn_button():
	#Makes Gridcontainer
	var grid_container = GridContainer.new()
	add_child(grid_container)
	grid_container.scale = Vector2(0.5,0.5)
	grid_container.columns = 3
	grid_container.position = Vector2(600,100)
	
	
	create_button(grid_container, BUTTON_OFF, EYE_STARE)
	create_button(grid_container, BUTTON_OFF, EYE_CLASSIC)
	create_button(grid_container, BUTTON_OFF, EYE_ROUND)

func create_button(parent, button_texture, eye_texture):
	var button_inst = Button.new()
	parent.add_child(button_inst)
	button_inst.flat = true
	var text_inst = TextureRect.new()
	text_inst.position = Vector2(0,20)
	
	button_inst.icon = button_texture
	button_inst.add_child(text_inst)
	text_inst.texture = eye_texture
	
	button_inst.pressed.connect(button_is_pressed.bind(text_inst.texture))
	

func button_is_pressed(texture):
	spawn_texture(texture)
	print('Button pressed, sprite updated')
