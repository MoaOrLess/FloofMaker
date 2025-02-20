extends Node2D

#Textures
@onready var textBody = $textBody
@onready var textEyes = $textEyes
@onready var textMouth = $textMouth

#Art
"res://ART/Eye 1.png"
"res://ART/Eye 2.png"
var body3 ="res://ART/Floof 2.png"
var body2 ="res://ART/Floof 3.png"
var body1 = "res://ART/Floof.png"
"res://ART/Mouth 1.png"
"res://ART/Mouth 2.png"


#Buttons
@onready var button_1a: Button = $"UI/GridContainer/Button 1A"
@onready var button_1b: Button = $"UI/GridContainer/Button 1B"
@onready var button_1c: Button = $"UI/GridContainer/Button 1C"
@onready var button_2a: Button = $"UI/GridContainer/Button 2A"
@onready var button_2b: Button = $"UI/GridContainer/Button 2B"
@onready var button_2c: Button = $"UI/GridContainer/Button 2C"
@onready var button_3a: Button = $"UI/GridContainer/Button 3A"
@onready var button_3b: Button = $"UI/GridContainer/Button 3B"
@onready var button_3c: Button = $"UI/GridContainer/Button 3C"


@onready var texture_rect: TextureRect = $"UI/GridContainer/Button 1A/TextureRect"
@onready var texture_rect2: TextureRect = $"UI/GridContainer/Button 2A2/TextureRect"



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	textBody.set_texture(null)
	textEyes.set_texture(null)
	textMouth.set_texture(null)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func changeTexture1A(): #Make the button change the textures
	textBody.set_texture(load(body1))

func changeTexture1B(): #Make the button change the textures
	textBody.set_texture(load(body2))
	
func changeTexture1C(): #Make the button change the textures
	textBody.set_texture(load(body3))

func _on_button_1a_pressed() -> void:
	textBody.set_texture(texture_rect.get_texture())
	
	print("pressed")


func _on_button_1b_pressed() -> void:
	changeTexture1B()


func _on_button_1c_pressed() -> void:
	changeTexture1C()
