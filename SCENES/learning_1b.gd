extends Node2D

#ART
@onready var EYE_STARE = preload("res://ART/Eye Stare.png")
@onready var EYE_ROUND = preload("res://ART/Eye Round.png")
@onready var EYE_CLASSIC = preload("res://ART/Eye Classic.png")

@onready var MOUTH_KIRBY = preload("res://ART/Mouth Kirby.png")
@onready var MOUTH_TOOF = preload("res://ART/Mouth Toof.png")
@onready var MOUTH_TREE = preload("res://ART/Mouth Tree.png")

@onready var BODY_CLASSIC = preload("res://ART/Body Classic.png")
@onready var BODY_TOLL = preload("res://ART/Body Toll.png")
@onready var BODY_WIDE = preload("res://ART/Body Wide.png")


@onready var BUTTON_A = preload("res://ART/Button A.png")
@onready var BUTTON_OFF = preload("res://ART/Button Off.png")
@onready var BUTTON_ON = preload("res://ART/Button On.png")

var current_sprite_eye: Sprite2D = null
var current_sprite_eye_L: Sprite2D = null
var current_sprite_mouth: Sprite2D = null
var current_sprite_body: Sprite2D = null

# Global references to button images
var sprite_inst_eye: Sprite2D
var sprite_inst_mouth: Sprite2D 
var sprite_inst_body: Sprite2D 


var texture_item: TextureRect
signal click

var pressed_offset = Vector2(5, 5)  # Add offset for position change when pressed



func _ready() -> void:
	
	spawn_button_body()
	spawn_button_eye()
	spawn_button_mouth()
	
	spawn_texture_mouth(BODY_CLASSIC)
	spawn_texture_eye(EYE_STARE)
	spawn_texture_mouth(MOUTH_KIRBY)


func _process(delta: float) -> void:
	pass
	

func spawn_texture_eye(text_eye):
	#Remove sprite if it exists
	if current_sprite_eye != null:
		remove_child(current_sprite_eye)
		current_sprite_eye.queue_free()  
	if current_sprite_eye_L != null:
		remove_child(current_sprite_eye_L)
		current_sprite_eye_L.queue_free()  
	
	#Make a new sprite
	var sprite_inst_eye = Sprite2D.new()
	add_child(sprite_inst_eye)
	
	
	#spirte_inst.set_texture(EYE_STARE)
	sprite_inst_eye.texture = text_eye
	sprite_inst_eye.z_index = 2
	sprite_inst_eye.scale = Vector2(0.5,0.5)
	sprite_inst_eye.position = Vector2(400,300)
	
	var sprite_inst_eye_L = Sprite2D.new()
	add_child(sprite_inst_eye_L)
	
	sprite_inst_eye_L .texture = text_eye
	sprite_inst_eye_L .z_index = 2
	sprite_inst_eye_L .scale = Vector2(0.5,0.5)
	sprite_inst_eye_L .flip_h = true
	sprite_inst_eye_L .position = Vector2(200,300)
	
	#Store new sprite
	current_sprite_eye = sprite_inst_eye
	current_sprite_eye_L = sprite_inst_eye_L
	
	
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
	sprite_inst_mouth.z_index = 1
	sprite_inst_mouth.scale = Vector2(0.5,0.5)
	sprite_inst_mouth.position = Vector2(300,350)
	
	#Store new sprite
	current_sprite_mouth = sprite_inst_mouth

func spawn_texture_body(text_body):
	#Remove sprite if it exists
	if current_sprite_body != null:
		remove_child(current_sprite_body)
		current_sprite_body.queue_free()  
	
	#Make a new sprite
	var sprite_inst_body = Sprite2D.new()
	add_child(sprite_inst_body)
	
	#spirte_inst.set_texture(EYE_STARE)
	sprite_inst_body.texture = text_body
	sprite_inst_body.z_index = 0
	sprite_inst_body.scale = Vector2(0.5,0.5)
	sprite_inst_body.position = Vector2(300,300)
	
	#Store new sprite
	current_sprite_body = sprite_inst_body
	
func spawn_button_eye():
	#Makes Gridcontainer
	var grid_container = GridContainer.new()
	add_child(grid_container)
	grid_container.scale = Vector2(0.5,0.5)
	grid_container.columns = 3
	grid_container.position = Vector2(600,100)
	
	
	create_button_eye(grid_container, BUTTON_OFF, EYE_STARE)
	create_button_eye(grid_container, BUTTON_OFF, EYE_CLASSIC)
	create_button_eye(grid_container, BUTTON_OFF, EYE_ROUND)
	
func spawn_button_mouth():
	var grid_container = GridContainer.new()
	add_child(grid_container)
	grid_container.scale = Vector2(0.5,0.5)
	grid_container.columns = 3
	grid_container.position = Vector2(600,250)
	
	create_button_mouth(grid_container, BUTTON_OFF, MOUTH_TREE)
	create_button_mouth(grid_container, BUTTON_OFF, MOUTH_KIRBY)
	create_button_mouth(grid_container, BUTTON_OFF, MOUTH_TOOF)

func spawn_button_body():
	var grid_container = GridContainer.new()
	add_child(grid_container)
	grid_container.scale = Vector2(0.5,0.5)
	grid_container.columns = 3
	grid_container.position = Vector2(600,400)
	
	create_button_body(grid_container, BUTTON_OFF, BODY_CLASSIC)
	create_button_body(grid_container, BUTTON_OFF, BODY_TOLL)
	create_button_body(grid_container, BUTTON_OFF, BODY_WIDE)
	
func create_button_eye(parent, button_texture, eye_texture):
	var button_inst_eye = TextureButton.new()
	parent.add_child(button_inst_eye)
	button_inst_eye.focus_mode = false
	sprite_inst_eye = Sprite2D.new()
	
	
	button_inst_eye.texture_normal = button_texture
	button_inst_eye.texture_pressed = BUTTON_ON
	button_inst_eye.add_child(sprite_inst_eye)
	sprite_inst_eye.texture = eye_texture
	
	var button_height = button_inst_eye.texture_normal.get_height()
	var button_width = button_inst_eye.texture_normal.get_width()
	sprite_inst_eye.position = Vector2(button_width/2,button_height/2)
	sprite_inst_eye.scale = Vector2(0.80,0.80)
	
	button_inst_eye.pressed.connect(button_is_pressed_eye.bind(sprite_inst_eye.texture))

func create_button_mouth(parent, button_texture, mouth_texture):
	var button_inst_mouth = TextureButton.new()
	parent.add_child(button_inst_mouth)
	button_inst_mouth.focus_mode = false
	sprite_inst_mouth = Sprite2D.new()
	
	
	button_inst_mouth.texture_normal = button_texture
	button_inst_mouth.texture_pressed = BUTTON_ON
	button_inst_mouth.add_child(sprite_inst_mouth)
	sprite_inst_mouth.texture = mouth_texture
	
	var button_height = button_inst_mouth.texture_normal.get_height()
	var button_width = button_inst_mouth.texture_normal.get_width()
	sprite_inst_mouth.position = Vector2(button_width/2 ,button_height/2)
	sprite_inst_mouth.scale = Vector2(0.80,0.80)
	
	button_inst_mouth.pressed.connect(button_is_pressed_mouth.bind(sprite_inst_mouth.texture))
	
func create_button_body(parent, button_texture, body_texture):
	var button_inst_body = TextureButton.new()
	parent.add_child(button_inst_body)
	#button_inst_body.flat = true
	button_inst_body.focus_mode = false
	sprite_inst_body = Sprite2D.new()
	
	
	button_inst_body.texture_normal = button_texture
	button_inst_body.texture_pressed = BUTTON_ON
	button_inst_body.add_child(sprite_inst_body)
	sprite_inst_body.texture = body_texture

	
	var button_height = button_inst_body.texture_normal.get_height()
	var button_width = button_inst_body.texture_normal.get_width()
	sprite_inst_body.position = Vector2(button_width/2,button_height/2)
	sprite_inst_body.scale = Vector2(0.15,0.15)
	
	#button_inst_body.pressed.connect(button_is_pressed_body.bind(sprite_inst_body.texture))
	button_inst_body.button_down.connect(button_is_pressed_body.bind(sprite_inst_body.texture))
	button_inst_body.pressed.connect(button_is_released_body)
	
func button_is_released_body():
	move_text_inst_position(sprite_inst_body, - pressed_offset)

func button_is_pressed_eye(texture):
	spawn_texture_eye(texture)
	move_text_inst_position(sprite_inst_eye, pressed_offset)
	print(sprite_inst_eye)
	
	await get_tree().create_timer(0.2).timeout
	move_text_inst_position(sprite_inst_eye, -pressed_offset)
	
func button_is_pressed_mouth(texture):
	spawn_texture_mouth(texture)
	move_text_inst_position(sprite_inst_mouth, pressed_offset)
	print(sprite_inst_mouth)
	
	await get_tree().create_timer(0.2).timeout
	move_text_inst_position(sprite_inst_mouth, -pressed_offset)


func button_is_pressed_body(texture):
	spawn_texture_body(texture)
	move_text_inst_position(sprite_inst_body, pressed_offset)
	print(sprite_inst_body)
	
	#await get_tree().create_timer(0.2).timeout
	
	



func move_text_inst_position(item_sprite, offset):
	if item_sprite != null:
		item_sprite.position = item_sprite.position + offset  # Move the sprite by the offset
