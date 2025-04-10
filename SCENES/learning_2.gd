extends Control

@onready var option_button_prefab: Control = $UI/MainPanel/GridContainer/OptionButtonPrefab
@onready var option_container: GridContainer = $UI/MainPanel/OptionContainer
@onready var h_box_container: HBoxContainer = $UI/HBoxContainer



@export var BUTTON_PREFAB = preload("res://SCENES/Button_prefab_1.tscn")
@export var ROUND_BUTTON_PREFAB = preload("res://SCENES/Button_prefab_2.tscn")


#ART SPRITES
var EYE_STARE = preload("res://ART/Eye Stare.png")
var EYE_ROUND = preload("res://ART/Eye Round.png")
var EYE_CLASSIC = preload("res://ART/Eye Classic.png")
var EYE_BIG = preload("res://ART/Eye Big.png")
var EYE_DONE = preload("res://ART/Eye Done.png")
var EYE_LINE_ = preload("res://ART/Eye Line .png")
var EYE_WOBLE = preload("res://ART/Eye Woble.png")
var EYE_ANIME = preload("res://ART/Eye Anime.png")
var EYE_BLINK = preload("res://ART/Eye Blink.png")
var EYE_CROSSED = preload("res://ART/Eye Crossed.png")
var EYE_GURL = preload("res://ART/Eye Gurl.png")
var EYE_INTENSE = preload("res://ART/Eye Intense.png")
var EYE_KIRBY = preload("res://ART/Eye Kirby.png")
var EYE_SHARP = preload("res://ART/Eye Sharp.png")
var EYE_TIC_TAC = preload("res://ART/Eye TicTac.png")
var EYE_TRAUMA = preload("res://ART/Eye Trauma.png")
var EYE_TWINKLE = preload("res://ART/Eye Twinkle.png")
var EYE_U = preload("res://ART/Eye U.png")


var MOUTH_KIRBY = preload("res://ART/Mouth Kirby.png")
var MOUTH_TOOF = preload("res://ART/Mouth Toof.png")
var MOUTH_TREE = preload("res://ART/Mouth Tree.png")
var MOUTH_LIP = preload("res://ART/Mouth Lip.png")
var MOUTH_POUT = preload("res://ART/Mouth Pout.png")
var MOUTH_SMOLLSMILE = preload("res://ART/Mouth Smollsmile.png")
var MOUTH_V = preload("res://ART/Mouth V.png")
var MOUTH_W = preload("res://ART/Mouth W.png")
var MOUTH_BEAN = preload("res://ART/Mouth Bean.png")


const BODY_ICON = preload("res://ART/Body Icon.png")
const BROW_ICON = preload("res://ART/Brow Icon.png")
const EXTRA_ICON = preload("res://ART/Extra Icon.png")
const EYE_ICON = preload("res://ART/Eye Icon.png")
const HAIR_ICON = preload("res://ART/Hair Icon.png")
const MOUTH_ICON = preload("res://ART/Mouth Icon.png")
const NOSE_ICON = preload("res://ART/Nose Icon.png")


var EyeOption = [EYE_STARE, EYE_ROUND, EYE_CLASSIC, EYE_BIG, EYE_DONE, EYE_LINE_,EYE_WOBLE, EYE_ANIME,
EYE_BLINK, EYE_CROSSED, EYE_GURL, EYE_INTENSE, EYE_KIRBY, EYE_SHARP, EYE_TIC_TAC, EYE_TRAUMA, EYE_TWINKLE, EYE_U]

var MouthOption = [MOUTH_KIRBY, MOUTH_TOOF, MOUTH_TREE, MOUTH_LIP, MOUTH_POUT, MOUTH_SMOLLSMILE, MOUTH_V,
MOUTH_W, MOUTH_BEAN]

var CategoryOption = [BODY_ICON, EYE_ICON, MOUTH_ICON, BROW_ICON, NOSE_ICON, HAIR_ICON, EXTRA_ICON]

var count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_eye_option_buttons()
	create_Icon_option_buttons()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(count)

func create_eye_option_buttons():
	for page_index in 9:
			var button = BUTTON_PREFAB.instantiate()
			var sprite = button.get_node("OptionButton/OptionSprite")
			sprite.texture = EyeOption[count]
			option_container.add_child(button)
			count += 1
			if count > EyeOption.size(): 
				break


func clear_eye_option_buttons():
	for child in option_container.get_children():
		option_container.remove_child(child)
	

func create_mouth_option_buttons():
	for mouth_sprite in MouthOption:
		var button = BUTTON_PREFAB.instantiate()
		var sprite = button.get_node("OptionButton/OptionSprite")
		sprite.texture = mouth_sprite
		#sprite.scale = Vector2(0.85,0.85)
		option_container.add_child(button)

func create_Icon_option_buttons():
	for category_sprite in CategoryOption:
		var roundButton = ROUND_BUTTON_PREFAB.instantiate()
		var categorysprite = roundButton.get_node("CategoryButton/CategorySprite")
		categorysprite.texture = category_sprite
		#sprite.scale = Vector2(0.85,0.85)
		h_box_container.add_child(roundButton)


func page_mouth():
	create_mouth_option_buttons()


func _on_texture_button_2_pressed() -> void:
	print("pressed")
	count = 9
	clear_eye_option_buttons()
	create_eye_option_buttons()


func _on_texture_button_pressed() -> void:
	print("pressed")
	count = 0
	clear_eye_option_buttons()
	create_eye_option_buttons()
