extends Node2D


@onready var EYE_STARE = preload("res://ART/Eye Stare.png")
@onready var EYE_ROUND = preload("res://ART/Eye Round.png")
@onready var EYE_CLASSIC = preload("res://ART/Eye Classic.png")

@onready var MOUTH_KIRBY = preload("res://ART/Mouth Kirby.png")
@onready var MOUTH_TOOF = preload("res://ART/Mouth Toof.png")
@onready var MOUTH_TREE = preload("res://ART/Mouth Tree.png")

@onready var BUTTON_A = preload("res://ART/Button A.png")
@onready var BUTTON_OFF = preload("res://ART/Button Off.png")
@onready var BUTTON_ON = preload("res://ART/Button On.png")

var current_sprite_eye: Sprite2D = null
var current_sprite_mouth: Sprite2D = null
var texture_item: TextureRect
signal click


func _ready() -> void:
	spawn_button_eye()
	spawn_button_mouth()
	spawn_texture_eye(EYE_STARE)
	spawn_texture_mouth(MOUTH_KIRBY)
	


func _process(delta: float) -> void:
	pass

func spawn_texture_eye(text_eye):
	#Remove sprite if it exists
	if current_sprite_eye != null:
		remove_child(current_sprite_eye)
		current_sprite_eye.queue_free()  
	
	#Make a new sprite
	var sprite_inst_eye = Sprite2D.new()
	add_child(sprite_inst_eye)
	
	#spirte_inst.set_texture(EYE_STARE)
	sprite_inst_eye.texture = text_eye
	sprite_inst_eye.scale = Vector2(0.5,0.5)
	sprite_inst_eye.position = Vector2(100,100)
	
	#Store new sprite
	current_sprite_eye = sprite_inst_eye
	
func spawn_texture_mouth(text_mouth):
	#Remove sprite if it exists
	if current_sprite_mouth != null:
		remove_child(current_sprite_mouth)
		current_sprite_mouth.queue_free()  
	
	#Make a new sprite
	var sprite_inst_mouth = Sprite2D.new()
	add_child(sprite_inst_mouth)
	
	#spirte_inst.set_texture(EYE_STARE)
	sprite_inst_mouth.texture = text_mouth
	sprite_inst_mouth.scale = Vector2(0.5,0.5)
	sprite_inst_mouth.position = Vector2(100,300)
	
	#Store new sprite
	current_sprite_mouth = sprite_inst_mouth

func spawn_button_eye():
	#Makes Gridcontainer
	var grid_container = GridContainer.new()
	add_child(grid_container)
	grid_container.scale = Vector2(0.5,0.5)
	grid_container.columns = 3
	grid_container.position = Vector2(600,300)
	
	
	create_button_eye(grid_container, BUTTON_OFF, EYE_STARE)
	create_button_eye(grid_container, BUTTON_OFF, EYE_CLASSIC)
	create_button_eye(grid_container, BUTTON_OFF, EYE_ROUND)
	
func spawn_button_mouth():
	var grid_container = GridContainer.new()
	add_child(grid_container)
	grid_container.scale = Vector2(0.5,0.5)
	grid_container.columns = 3
	grid_container.position = Vector2(600,100)
	create_button_mouth(grid_container, BUTTON_OFF, MOUTH_TREE)
	create_button_mouth(grid_container, BUTTON_OFF, MOUTH_KIRBY)
	create_button_mouth(grid_container, BUTTON_OFF, MOUTH_TOOF)

func create_button_eye(parent, button_texture, eye_texture):
	var button_inst_eye = Button.new()
	parent.add_child(button_inst_eye)
	button_inst_eye.flat = true
	var text_inst_eye = Sprite2D.new()
	
	
	button_inst_eye.icon = button_texture
	button_inst_eye.add_child(text_inst_eye)
	text_inst_eye.texture = eye_texture
	
	var button_height = button_inst_eye.icon.get_height()
	var button_width = button_inst_eye.icon.get_width()
	text_inst_eye.position = Vector2(button_width/2,button_height/2)
	text_inst_eye.scale = Vector2(0.80,0.80)
	
	button_inst_eye.pressed.connect(button_is_pressed_eye.bind(text_inst_eye.texture))

func create_button_mouth(parent, button_texture, mouth_texture):
	var button_inst_mouth = Button.new()
	parent.add_child(button_inst_mouth)
	button_inst_mouth.flat = true
	var text_inst_mouth = Sprite2D.new()
	
	
	button_inst_mouth.icon = button_texture
	button_inst_mouth.add_child(text_inst_mouth)
	text_inst_mouth.texture = mouth_texture
	
	var button_height = button_inst_mouth.icon.get_height()
	var button_width = button_inst_mouth.icon.get_width()
	text_inst_mouth.position = Vector2(button_width/2,button_height/2)
	text_inst_mouth.scale = Vector2(0.80,0.80)
	
	button_inst_mouth.pressed.connect(button_is_pressed_mouth.bind(text_inst_mouth.texture))

func button_is_pressed_eye(texture):
	spawn_texture_eye(texture)
	print(str(texture))
	print('Button pressed, sprite updated')
	
func button_is_pressed_mouth(texture):
	spawn_texture_mouth(texture)
	print(str(texture))
	print('Button pressed, sprite updated')
