extends Control


@onready var color_panel: Panel = $"UI/Color Panel"


#Side Buttons:
@onready var item_up: TextureButton = $"UI/SidePanel/Item Up"
@onready var item_down: TextureButton = $"UI/SidePanel/Item Down"
@onready var item_closer: TextureButton = $"UI/SidePanel/Item Closer"
@onready var item_further: TextureButton = $"UI/SidePanel/Item Further"
@onready var item_shrink: TextureButton = $"UI/SidePanel/Item Shrink"
@onready var item_zoom: TextureButton = $"UI/SidePanel/Item Zoom"
@onready var item_rot_right: TextureButton = $"UI/SidePanel/Item Rot Right"
@onready var item_rot_left: TextureButton = $"UI/SidePanel/Item Rot left"


@onready var option_container: GridContainer = $UI/MainPanel/OptionContainer
@onready var h_box_container: HBoxContainer = $UI/HBoxContainer
@onready var extra_options: HBoxContainer = $"Extra Options"
@onready var h_box_container_2: HBoxContainer = $UI/HBoxContainer2


const MAKE_BUTTON_WHITE = preload("res://SHADER/Make Button White.tres")
const MAKE_BUTTON_BLACK = preload("res://SHADER/Make Button Black.tres")


@onready var body_prefab: Node2D = $UI/BodyPrefab
@onready var eye_prefab: Node2D = $UI/EyePrefab
@onready var mouth_prefab: Node2D = $UI/MouthPrefab
@onready var brow_prefab: Node2D = $UI/BrowPrefab
@onready var nose_prefab: Node2D = $UI/NosePrefab


@onready var page_number: Label = $"UI/MainPanel/Page Number"

#instance stuff
@export var BUTTON_PREFAB = preload("res://SCENES/Button_prefab_1.tscn")
@export var ROUND_BUTTON_PREFAB = preload("res://SCENES/Button_prefab_2.tscn")
@export var BROW_PREFAB = preload("res://SCENES/Brow_prefab.tscn")
@export var NOSE_PREFAB = preload("res://SCENES/nose_prefab.tscn")
@export var COLOR_SELECT_PREFAB = preload("res://SCENES/color_select_prefab.tscn")


#ART SPRITES
const EMPTY = null

const BROW_BLOCK = preload("res://ART/BROWS ART/Brow Block.png")
const BROW_BRICK = preload("res://ART/BROWS ART/Brow Brick.png")
const BROW_CHONK = preload("res://ART/BROWS ART/Brow Chonk.png")
const BROW_CLASSIC = preload("res://ART/BROWS ART/Brow Classic.png")
const BROW_FROWN = preload("res://ART/BROWS ART/Brow Frown.png")
const BROW_HAIRY = preload("res://ART/BROWS ART/Brow Hairy.png")
const BROW_HAT = preload("res://ART/BROWS ART/Brow Hat.png")
const BROW_INTENSE = preload("res://ART/BROWS ART/Brow Intense.png")
const BROW_PRESSED = preload("res://ART/BROWS ART/Brow Pressed.png")
const BROW_ROUND_BLOCK = preload("res://ART/BROWS ART/Brow RoundBlock.png")
const BROW_ROUNDISH = preload("res://ART/BROWS ART/Brow Roundish.png")
const BROW_SHWONK = preload("res://ART/BROWS ART/Brow Shwonk.png")
const BROW_SLICK = preload("res://ART/BROWS ART/Brow Slick.png")
const BROW_SWOOP = preload("res://ART/BROWS ART/Brow Swoop.png")
const BROW_TEAR = preload("res://ART/BROWS ART/Brow Tear.png")


const BODY_ICON = preload("res://ART/BUTTON ART/Body Icon.png")
const BROW_ICON = preload("res://ART/BUTTON ART/Brow Icon.png")
const EXTRA_ICON = preload("res://ART/BUTTON ART/Extra Icon.png")
const EYE_ICON = preload("res://ART/BUTTON ART/Eye Icon.png")
const HAIR_ICON = preload("res://ART/BUTTON ART/Hair Icon.png")
const NOSE_ICON = preload("res://ART/BUTTON ART/Nose Icon.png")
const QUESTION_MARK_ICON = preload("res://ART/BUTTON ART/Question Mark Icon.png")

const EYE_ALMOND = preload("res://ART/EYES ART/Eye Almond.png")
const EYE_ANIME = preload("res://ART/EYES ART/Eye Anime.png")
const EYE_BIG = preload("res://ART/EYES ART/Eye Big.png")
const EYE_BLINK = preload("res://ART/EYES ART/Eye Blink.png")
const EYE_CLASSIC = preload("res://ART/EYES ART/Eye Classic.png")
const EYE_CROSSED = preload("res://ART/EYES ART/Eye Crossed.png")
const EYE_DONE = preload("res://ART/EYES ART/Eye Done.png")
const EYE_GURL = preload("res://ART/EYES ART/Eye Gurl.png")
const EYE_INTENSE = preload("res://ART/EYES ART/Eye Intense.png")
const EYE_KIRBY = preload("res://ART/EYES ART/Eye Kirby.png")
const EYE_LINE = preload("res://ART/EYES ART/Eye Line .png")
const EYE_REALISH = preload("res://ART/EYES ART/Eye Realish.png")
const EYE_ROUND = preload("res://ART/EYES ART/Eye Round.png")
const EYE_SHARP = preload("res://ART/EYES ART/Eye Sharp.png")
const EYE_STARE = preload("res://ART/EYES ART/Eye Stare.png")
const EYE_TIC_TAC = preload("res://ART/EYES ART/Eye TicTac.png")
const EYE_TRAUMA = preload("res://ART/EYES ART/Eye Trauma.png")
const EYE_TWINKLE = preload("res://ART/EYES ART/Eye Twinkle.png")
const EYE_U = preload("res://ART/EYES ART/Eye U.png")
const EYE_WOBLE = preload("res://ART/EYES ART/Eye Woble.png")
const FLOOF_GIDDY = preload("res://ART/EYES ART/Floof Giddy.png")

const EYE_ALMOND_IRIS = preload("res://ART/EYES ART/IRIS/Eye Almond Iris.png")
const EYE_ANIME_IRIS = preload("res://ART/EYES ART/IRIS/Eye Anime Iris.png")
const EYE_BIG_IRIS = preload("res://ART/EYES ART/IRIS/Eye Big Iris.png")
const EYE_BLINK_IRIS = null
const EYE_CLASSIC_IRIS = null
const EYE_CROSSED_IRIS = preload("res://ART/EYES ART/IRIS/Eye Crossed Iris.png")
const EYE_DONE_IRIS = null
const EYE_GURL_IRIS = null
const EYE_INTENSE_IRIS = preload("res://ART/EYES ART/IRIS/Eye Intense Iris.png")
const EYE_KIRBY_IRIS = null
const EYE_LINE_IRIS = null
const EYE_REALISH_IRIS = preload("res://ART/EYES ART/IRIS/Eye Realish Iris.png")
const EYE_ROUND_IRIS = null
const EYE_SHARP_IRIS = preload("res://ART/EYES ART/IRIS/Eye Sharp Iris.png")
const EYE_STARE_IRIS = preload("res://ART/EYES ART/IRIS/Eye Stare Iris.png")
const EYE_TIC_TAC_IRIS = null
const EYE_TRAUMA_IRIS = null
const EYE_TWINKLE_IRIS = null
const EYE_U_IRIS = null
const EYE_WOBLE_IRIS = preload("res://ART/EYES ART/IRIS/Eye Woble Iris.png")
const FLOOF_GIDDY_IRIS = preload("res://ART/EYES ART/IRIS/Floof Giddy Iris.png")


const MOUTH_BEAN = preload("res://ART/MOUTH ART/Mouth Bean.png")
const MOUTH_CHEEKY_GRIN = preload("res://ART/MOUTH ART/Mouth Cheeky Grin.png")
const MOUTH_GRIN = preload("res://ART/MOUTH ART/Mouth Grin.png")
const MOUTH_ICON = preload("res://ART/MOUTH ART/Mouth Icon.png")
const MOUTH_JOJO = preload("res://ART/MOUTH ART/Mouth Jojo.png")
const MOUTH_KIRBY = preload("res://ART/MOUTH ART/Mouth Kirby.png")
const MOUTH_LIP = preload("res://ART/MOUTH ART/Mouth Lip.png")
const MOUTH_LIPS = preload("res://ART/MOUTH ART/Mouth Lips.png")
const MOUTH_POUT = preload("res://ART/MOUTH ART/Mouth Pout.png")
const MOUTH_SHARP = preload("res://ART/MOUTH ART/Mouth Sharp.png")
const MOUTH_SMIRK = preload("res://ART/MOUTH ART/Mouth Smirk.png")
const MOUTH_SMOLLSMILE = preload("res://ART/MOUTH ART/Mouth Smollsmile.png")
const MOUTH_SMUG = preload("res://ART/MOUTH ART/Mouth Smug.png")
const MOUTH_SSSSH = preload("res://ART/MOUTH ART/Mouth Ssssh.png")
const MOUTH_TOOF = preload("res://ART/MOUTH ART/Mouth Toof.png")
const MOUTH_TREE = preload("res://ART/MOUTH ART/Mouth Tree.png")
const MOUTH_V = preload("res://ART/MOUTH ART/Mouth V.png")
const MOUTH_W = preload("res://ART/MOUTH ART/Mouth W.png")

const NOSE_BLOB = preload("res://ART/NOSE ART/Nose Blob.png")
const NOSE_BUTTON = preload("res://ART/NOSE ART/Nose Button.png")
const NOSE_CAT = preload("res://ART/NOSE ART/Nose Cat.png")
const NOSE_CLOWN = preload("res://ART/NOSE ART/Nose Clown.png")
const NOSE_FLARE = preload("res://ART/NOSE ART/Nose Flare.png")
const NOSE_GREMLIN = preload("res://ART/NOSE ART/Nose Gremlin.png")
const NOSE_REALISH = preload("res://ART/NOSE ART/Nose Realish.png")
const NOSE_SQUIDWARD = preload("res://ART/NOSE ART/Nose Squidward.png")
const NOSE_VOLDY = preload("res://ART/NOSE ART/Nose Voldy.png")
const NOSE_MUSH = preload("res://ART/NOSE ART/Nose Mush.png")
const NOSE_PEAR = preload("res://ART/NOSE ART/Nose Pear.png")
const NOSE_SCARY = preload("res://ART/NOSE ART/Nose Scary.png")
const NOSE_SIDE_C = preload("res://ART/NOSE ART/Nose Side C.png")
const NOSE_SIDE_V = preload("res://ART/NOSE ART/Nose Side V.png")
const NOSE_SIDE = preload("res://ART/NOSE ART/Nose Side.png")
const NOSE_SKULL = preload("res://ART/NOSE ART/Nose Skull.png")
const NOSE_SMOLL = preload("res://ART/NOSE ART/Nose Smoll.png")

#color
var PINK = Color(0.788, 0.384, 0.502)
var ORANGE = Color(0.798, 0.415, 0.163)
var YELLOW = Color(0.835, 0.62, 0.231)
var GREEN = Color(0.448, 0.674, 0.416)
var TEAL = Color(0.26, 0.633, 0.58)
var BLUE = Color(0.122, 0.459, 0.796)
var RED = Color(0.78, 0.212, 0.188)
var PURPLE = Color(0.416, 0.278, 0.655)
var WHITE = Color(0, 0, 0)


# Arrays of options
var ExtraOption =[QUESTION_MARK_ICON]
var EyeOption = [EYE_ALMOND, EYE_ANIME, EYE_BIG, EYE_BLINK, EYE_CLASSIC, EYE_CROSSED, EYE_DONE,
EYE_GURL, EYE_INTENSE, EYE_KIRBY, EYE_LINE, EYE_REALISH, EYE_ROUND, EYE_SHARP, EYE_STARE,
EYE_TIC_TAC, EYE_TRAUMA, EYE_TWINKLE, EYE_U, EYE_WOBLE, FLOOF_GIDDY]
var IrisOption = [EYE_ALMOND_IRIS, EYE_ANIME_IRIS, EYE_BIG_IRIS, EYE_BLINK_IRIS,
EYE_CLASSIC_IRIS, EYE_CROSSED_IRIS, EYE_DONE_IRIS, EYE_GURL_IRIS, EYE_INTENSE_IRIS,
EYE_KIRBY_IRIS, EYE_LINE_IRIS, EYE_REALISH_IRIS, EYE_ROUND_IRIS, EYE_SHARP_IRIS,
EYE_STARE_IRIS, EYE_TIC_TAC_IRIS, EYE_TRAUMA_IRIS, EYE_TWINKLE_IRIS, EYE_U_IRIS, EYE_WOBLE_IRIS,
FLOOF_GIDDY_IRIS]

var MouthOption = [MOUTH_BEAN, MOUTH_CHEEKY_GRIN, MOUTH_GRIN, MOUTH_JOJO,
MOUTH_KIRBY, MOUTH_LIP, MOUTH_LIPS, MOUTH_POUT, MOUTH_SHARP, MOUTH_SMIRK, MOUTH_SMOLLSMILE,
MOUTH_SMUG, MOUTH_SSSSH, MOUTH_TOOF, MOUTH_TREE, MOUTH_V, MOUTH_W ]
var BrowOption = [EMPTY, BROW_BLOCK, BROW_BRICK, BROW_CHONK, BROW_CLASSIC, BROW_FROWN, BROW_HAIRY,
BROW_HAT, BROW_INTENSE, BROW_PRESSED, BROW_ROUND_BLOCK, BROW_ROUNDISH, BROW_SHWONK, BROW_SLICK, BROW_SWOOP, BROW_TEAR]
var NoseOption = [EMPTY, NOSE_BLOB, NOSE_BUTTON, NOSE_CAT, NOSE_CLOWN, NOSE_FLARE, NOSE_GREMLIN, NOSE_REALISH,
NOSE_SQUIDWARD, NOSE_VOLDY,NOSE_MUSH, NOSE_PEAR, NOSE_SCARY, NOSE_SIDE_C, NOSE_SIDE_V, NOSE_SIDE, NOSE_SKULL, NOSE_SMOLL]
var CategoryOption = [BODY_ICON, EYE_ICON, MOUTH_ICON, BROW_ICON, NOSE_ICON, HAIR_ICON, EXTRA_ICON]
var ColorOption = [PINK, ORANGE, YELLOW, GREEN, TEAL, BLUE, RED, PURPLE, WHITE]


var page_index
var page = 0
var EYES
var MOUTHS
var category_index

var eye_sprite
var iris_sprite
var brow_sprite
var current_category = 1
var cat_eyes
var cat_mouth
var cat_brows
var current_sprite_eye: Sprite2D = null
var current_sprite_mouth: Sprite2D = null
var current_sprite_brow: Sprite2D = null
var current_sprite_nose: Sprite2D = null


var Item_up_pressed: bool = false
var Item_down_pressed: bool = false
var Item_zoom_pressed:  bool = false
var Item_shrink_pressed:  bool = false
var Item_further_pressed:  bool = false
var Item_closer_pressed:  bool = false
var Item_rotr_pressed:  bool = false
var Item_rotl_pressed:  bool = false

var selected_button_index := -1
var colorHue
var newColor
var color_option = get_color_options()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_eye_option_buttons()
	create_Icon_option_buttons()
	create_extra_options()
	create_Color_Option_button()
	
	body_prefab.modulate = ColorOption[0]
	nose_prefab.modulate = ColorOption[0]
	eye_prefab.iris_sprite.modulate = ColorOption[8]
	eye_prefab.iris_mirror.modulate = ColorOption[8]
	brow_prefab.modulate = ColorOption[8]



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#if delta < (1 / 30): 
	#	return
	number_page() 
	if Item_up_pressed == true:
		Item_Up(delta * 5)
	if Item_closer_pressed == true:
		Item_Closer(delta* 5)
	if Item_down_pressed == true:
		Item_Down(delta* 5)
	if Item_further_pressed == true:
		Item_Further(delta* 5)
	if Item_zoom_pressed == true:
		Item_Zoom(delta* 5)
	if Item_shrink_pressed == true:
		Item_Shrink(delta* 5)
	if Item_rotl_pressed == true:
		Item_RotL(delta* 5)
	if Item_rotr_pressed == true:
		Item_RotR(delta* 5)

func number_page():
	page_number.text = str(page + 1)


func create_extra_options():
	for x in 1:
		var roundButton = ROUND_BUTTON_PREFAB.instantiate()
		var ExtraButtonsprite = roundButton.get_node("CategorySprite")
		ExtraButtonsprite.texture = ExtraOption[x]
		extra_options.add_child(roundButton)
		roundButton.pressed.connect(random_button_pressed)

func create_eye_option_buttons():
	for index_on_page in 9:
		var eye_button = BUTTON_PREFAB.instantiate()
		eye_sprite = eye_button.get_node("OptionSprite")
		iris_sprite = eye_button.get_node("IrisSprite")
		var index = index_on_page + (page * 9)
		if index >= EyeOption.size(): 
			break
		eye_sprite.texture = EyeOption[index]
		iris_sprite.texture = IrisOption[index]
		option_container.add_child(eye_button)
		eye_button.pressed.connect(button_is_pressed_eyes.bind(eye_sprite.texture, iris_sprite.texture))


func clear_option_buttons():
	for child in option_container.get_children():
		option_container.remove_child(child)

func clear_color_buttons():
	for child in h_box_container_2.get_children():
		h_box_container_2.remove_child(child)
		

func create_mouth_option_buttons():
	for index_on_page in 9:
		var button = BUTTON_PREFAB.instantiate()
		var sprite = button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= MouthOption.size(): 
			break
		sprite.texture = MouthOption[index]
		option_container.add_child(button)
		button.pressed.connect(button_is_pressed.bind(sprite.texture))

func create_nose_option_buttons():
	for index_on_page in 9:
		var button = BUTTON_PREFAB.instantiate()
		var sprite = button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= NoseOption.size(): 
			break
		sprite.texture = NoseOption[index]
		option_container.add_child(button)
		button.pressed.connect(button_is_pressed.bind(sprite.texture))

func create_brow_option_buttons():
	for index_on_page in 9:
		var brow_button = BUTTON_PREFAB.instantiate()
		brow_sprite = brow_button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= BrowOption.size(): 
			break
		brow_sprite.texture = BrowOption[index]
		option_container.add_child(brow_button)
		brow_button.pressed.connect(button_is_pressed.bind(brow_sprite.texture))


func create_Icon_option_buttons():
	for category_index in 7:
		var roundButton = ROUND_BUTTON_PREFAB.instantiate()
		var categorysprite = roundButton.get_node("CategorySprite")
		categorysprite.texture = CategoryOption[category_index]
		#sprite.scale = Vector2(0.85,0.85)
		h_box_container.add_child(roundButton)
		roundButton.pressed.connect(category_button_pressed.bind(category_index))
		

func create_Color_Option_button():
	#var colors = get_color_options()
	for color_index in 9:
		var colorButton = COLOR_SELECT_PREFAB.instantiate()
		colorHue = colorButton.get_node("ColorRect")
		#colorHue.color = ColorOption[color_index]
		colorHue.color = color_option[color_index]
		h_box_container_2.add_child(colorButton)
		colorButton.pressed.connect(color_sprite_change.bind(color_index))
		colorButton.gui_input.connect(_on_color_button_gui_input.bind(colorButton))

func _on_color_button_gui_input(event, colorButton) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			for i in color_option.size():
				if colorButton.get_node("ColorRect").color == color_option[i]:
					selected_button_index = i
					break
			print("pressed")
			color_panel.global_position = colorButton.get_global_position() + Vector2(0, colorButton.size.y/2)
			color_panel.visible = true



func page_mouth():
	clear_option_buttons()
	create_mouth_option_buttons()


func _on_page_up_pressed() -> void:
	if page > 0:
		page -= 1
		clear_option_buttons()
		if current_category == 1:
			create_eye_option_buttons()
		if current_category == 2:
			create_mouth_option_buttons()
		if current_category == 3:
			create_brow_option_buttons()
		if current_category == 4:
			create_nose_option_buttons()


func _on_page_down_pressed() -> void:
	if current_category == 1:
		if (page + 1) * 9 < EyeOption.size():
			page += 1
			clear_option_buttons()
			create_eye_option_buttons()
	if current_category == 2:
		if (page + 1) * 9 < MouthOption.size():
			page += 1
			clear_option_buttons()
			create_mouth_option_buttons()
	if current_category == 3:
		if (page + 1) * 9 < BrowOption.size():
			page += 1
			clear_option_buttons()
			create_brow_option_buttons()
	if current_category == 4:
		if (page + 1) * 9 < NoseOption.size():
			page += 1
			clear_option_buttons()
			create_nose_option_buttons()



func category_button_pressed(category_index):
	print(category_index)
	self.category_index = category_index
	if category_index == 0:
		pass
	if  category_index == 1:
		page = 0
		current_category = 1
		clear_option_buttons()
		create_eye_option_buttons()
	if  category_index == 2:
		page = 0
		current_category = 2
		clear_option_buttons()
		create_mouth_option_buttons()
	if  category_index == 3:
		page = 0
		current_category = 3
		clear_option_buttons()
		create_brow_option_buttons()
	if  category_index == 4:
		page = 0
		current_category = 4
		clear_option_buttons()
		create_nose_option_buttons()
	#if  CategoryOption[2]:
		#clear_option_buttons()
		#create_mouth_option_buttons()
	
func color_sprite_change(color_index):
	var selected_color = color_option[color_index]
	if category_index == 0:
		body_prefab.modulate = selected_color
	if category_index == 1:
		eye_prefab.iris_sprite.modulate = selected_color
		eye_prefab.iris_mirror.modulate = selected_color
	if category_index == 2:
		mouth_prefab.modulate = selected_color
	if category_index == 3:
		brow_prefab.modulate = selected_color
	if category_index == 4:
		nose_prefab.modulate = selected_color
 


func button_is_pressed(texture):
	change_texture_mouth(texture)
	change_texture_brow(texture)
	change_texture_nose(texture)

func button_is_pressed_eyes(texture, texture2):
	change_texture_eye(texture, texture2)
	
func change_texture_eye(texture, texture2):
	var MirrorSprite = eye_prefab.get_node("EyeSprite")
	var MirrorSprite3 = eye_prefab.get_node("IrisSprite")
	#var MirrorSprite2 = iris_prefab.get_node("IrisSprite")
	if current_sprite_eye != null:
		eye_prefab.eye_sprirte.texture = texture
		eye_prefab.iris_sprite.texture = texture2
	if current_category == 1:
		MirrorSprite.texture = texture
		MirrorSprite3.texture = texture2
		eye_prefab.eye_mirror.texture = texture
		eye_prefab.iris_mirror.texture = texture2



func change_texture_mouth(texture):
	if current_sprite_mouth != null:
		mouth_prefab.mouth_sprite.texture = texture
	if current_category == 2:
		mouth_prefab.mouth_sprite.texture = texture

func change_texture_nose(texture):
	if current_sprite_nose != null:
		nose_prefab.nose_sprite.texture = texture
	if current_category == 4:
		nose_prefab.nose_sprite.texture = texture

func change_texture_brow(texture):
	var MirrorSprite = brow_prefab.get_node("BrowSprite")
	if current_sprite_brow != null:
		brow_prefab.brow_sprite.texture = texture
	if current_category == 3:
		MirrorSprite.texture = texture
		brow_prefab.brow_mirror.texture = texture

func Item_Up_Button_Pressed() -> void:
	Item_Up(0)

func Item_Up(delta):
	Item_up_pressed = true
	var item_move = 10
	if current_category == 1:
		if eye_prefab.position.y > -300:
			eye_prefab.position.y -= item_move * delta
	if current_category == 2:
		if mouth_prefab.position.y > 100:
			mouth_prefab.position.y -= item_move * delta
	if current_category == 3:
		if brow_prefab.brow_mirror.position.y > -320:
			brow_prefab.brow_mirror.position.y -= item_move * delta
			brow_prefab.brow_sprite.position.y -= item_move * delta
	if current_category == 4:
		if nose_prefab.position.y > 70:
			nose_prefab.position.y -= item_move * delta

func _on_item_up_button_up() -> void:
	item_up.material = MAKE_BUTTON_BLACK
	Item_up_pressed = false

func _on_item_up_button_down() -> void:
	item_up.material = MAKE_BUTTON_WHITE
	Item_Up(0)

func _on_item_down_pressed() -> void:
	Item_Down(0)

func Item_Down(delta):
	Item_down_pressed = true
	var item_move = 10
	if current_category == 1:
		if eye_prefab.position.y < 430:
			eye_prefab.position.y += item_move * delta
	if current_category == 2:
		if mouth_prefab.position.y < 470:
			mouth_prefab.position.y += item_move * delta
	if current_category == 3:
		if brow_prefab.brow_sprite.position.y < 420:
			brow_prefab.brow_mirror.position.y += item_move * delta
			brow_prefab.brow_sprite.position.y += item_move * delta
	if current_category == 4:
		if nose_prefab.position.y < 500:
			nose_prefab.position.y += item_move * delta


func _on_item_down_button_up() -> void:
	item_down.material = MAKE_BUTTON_BLACK
	Item_down_pressed = false

func _on_item_down_button_down() -> void:
	item_down.material = MAKE_BUTTON_WHITE
	Item_Down(0)

func _on_item_shrink_pressed() -> void:
	Item_Shrink(0)

func Item_Shrink(delta):
	Item_shrink_pressed = true
	var item_scale = 0.05
	if current_category == 1:
		if eye_prefab.eye_sprite.scale > Vector2 (0.5,0.5):
			eye_prefab.eye_sprite.scale -= Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_sprite.scale -= Vector2(item_scale,item_scale) * delta
			eye_prefab.eye_mirror.scale -= Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_mirror.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == 2:
		if mouth_prefab.scale > Vector2 (0.5,0.5):
			mouth_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == 3:
		if brow_prefab.brow_mirror.scale > Vector2 (0.5,0.5):
			brow_prefab.brow_mirror.scale -= Vector2(item_scale,item_scale) * delta
			brow_prefab.brow_sprite.scale -= Vector2(item_scale,item_scale) * delta

func _on_item_shrink_button_up() -> void:
	Item_shrink_pressed = false
	item_shrink.material = MAKE_BUTTON_BLACK

func _on_item_shrink_button_down() -> void:
	item_shrink.material = MAKE_BUTTON_WHITE
	Item_Shrink(0)

func _on_item_zoom_pressed() -> void:
	Item_Zoom(0)

func Item_Zoom(delta):
	Item_zoom_pressed = true
	var item_scale = 0.05
	if current_category == 1:
		if eye_prefab.eye_sprite.scale < Vector2 (1.5,1.5):
			eye_prefab.eye_sprite.scale += Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_sprite.scale += Vector2(item_scale,item_scale) * delta
			eye_prefab.eye_mirror.scale += Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_mirror.scale += Vector2(item_scale,item_scale) * delta
	if current_category == 2:
		if mouth_prefab.scale < Vector2 (1.5,1.5):
			mouth_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == 3:
		if brow_prefab.brow_mirror.scale < Vector2 (1.5,1.5):
			brow_prefab.brow_mirror.scale += Vector2(item_scale,item_scale) * delta
			brow_prefab.brow_sprite.scale += Vector2(item_scale,item_scale) * delta

func _on_item_zoom_button_up() -> void:
	item_zoom.material = MAKE_BUTTON_BLACK
	Item_zoom_pressed = false

func _on_item_zoom_button_down() -> void:
	item_zoom.material = MAKE_BUTTON_WHITE
	Item_Zoom(0)

func _on_item_rot_left_pressed() -> void:
	Item_RotL(0)

func Item_RotL(delta):
	Item_rotl_pressed = true
	var item_rot = deg_to_rad(5)
	if current_category == 1:
		if eye_prefab.eye_mirror.rotation > deg_to_rad(-180):
			eye_prefab.eye_mirror.rotation -= item_rot * delta
			eye_prefab.iris_mirror.rotation -= item_rot * delta
			eye_prefab.eye_sprite.rotation += item_rot * delta
			eye_prefab.iris_sprite.rotation += item_rot * delta
	if current_category == 2:
		if mouth_prefab.rotation > deg_to_rad(-180):
			mouth_prefab.rotation -= item_rot * delta
	if current_category == 3:
		if brow_prefab.brow_sprite.rotation > deg_to_rad(-180):
			brow_prefab.brow_mirror.rotation -= item_rot * delta
			brow_prefab.brow_sprite.rotation += item_rot * delta

func _on_item_rot_left_button_up() -> void:
	Item_rotl_pressed = false
	item_rot_left.material = MAKE_BUTTON_BLACK

func _on_item_rot_left_button_down() -> void:
	item_rot_left.material = MAKE_BUTTON_WHITE
	Item_RotL(0)

func _on_item_rot_right_pressed() -> void:
	Item_RotR(0)

func Item_RotR(delta):
	Item_rotr_pressed = true
	var item_rot = deg_to_rad(5)
	if current_category == 1:
		if eye_prefab.eye_mirror.rotation < deg_to_rad(180):
			eye_prefab.eye_mirror.rotation += item_rot * delta
			eye_prefab.eye_sprite.rotation -= item_rot * delta
			eye_prefab.iris_mirror.rotation += item_rot * delta
			eye_prefab.iris_sprite.rotation -= item_rot * delta
			
	if current_category == 2:
		if mouth_prefab.rotation < deg_to_rad(180):
			mouth_prefab.rotation += item_rot * delta
	if current_category == 3:
		if brow_prefab.brow_sprite.rotation < deg_to_rad(180):
			brow_prefab.brow_mirror.rotation += item_rot * delta
			brow_prefab.brow_sprite.rotation -= item_rot * delta

func _on_item_rot_right_button_up() -> void:
	Item_rotr_pressed = false
	item_rot_right.material = MAKE_BUTTON_BLACK

func _on_item_rot_right_button_down() -> void:
	item_rot_right.material = MAKE_BUTTON_WHITE
	Item_RotR(0)

func _on_item_further_pressed() -> void:
	Item_Further(0)

func Item_Further(delta):
	Item_further_pressed = true
	var item_pos = 10
	var item_scale = 0.05
	if current_category == 1:
		if eye_prefab.eye_sprite.position.x < 350:
			eye_prefab.eye_mirror.position.x -= item_pos * delta
			eye_prefab.eye_sprite.position.x += item_pos * delta
			eye_prefab.iris_mirror.position.x -= item_pos * delta
			eye_prefab.iris_sprite.position.x += item_pos * delta
	if current_category == 2:
		if mouth_prefab.scale.x < 350:
			mouth_prefab.scale.x -= item_scale * delta
	if current_category == 3:
		if brow_prefab.brow_sprite.position.x < 350:
			brow_prefab.brow_sprite.position.x-= item_pos * delta
			brow_prefab.brow_sprite.position.x += item_pos * delta

func _on_item_further_button_up() -> void:
	item_further.material = MAKE_BUTTON_BLACK
	Item_further_pressed = false

func _on_item_further_button_down() -> void:
	item_further.material = MAKE_BUTTON_WHITE
	Item_Further(0)

func _on_item_closer_pressed() -> void:
	Item_Closer(0)

func Item_Closer(delta):
	Item_closer_pressed = true
	var item_pos = 10
	var item_scale = 0.05
	if current_category == 1:
		if eye_prefab.eye_sprite.position.x > 50:
			eye_prefab.eye_mirror.position.x += item_pos * delta
			eye_prefab.eye_sprite.position.x -= item_pos * delta
			eye_prefab.iris_mirror.position.x += item_pos * delta
			eye_prefab.iris_sprite.position.x -= item_pos * delta
	if current_category == 2:
		if mouth_prefab.scale.x > 50:
			mouth_prefab.scale.x += item_scale * delta
	if current_category == 3:
		if brow_prefab.brow_sprite.position.x > 50:
			brow_prefab.brow_mirror.position.x += item_pos * delta
			brow_prefab.brow_sprite.position.x -= item_pos * delta

func _on_item_closer_button_up() -> void:
	item_closer.material = MAKE_BUTTON_BLACK
	Item_closer_pressed = false

func _on_item_closer_button_down() -> void:
	item_closer.material = MAKE_BUTTON_WHITE
	Item_Closer(0)

func random_eyes():
	var random_numb = randf_range(-200,50)
	var random_value = randi_range(0,EyeOption.size()-1)
	
	var pick_random_eyes = EyeOption[random_value]
	var MirrorSprite = eye_prefab.get_node("EyeSprite")
	var match_random_iris = IrisOption[random_value]
	var MirrorIris = eye_prefab.get_node("IrisSprite")
	
	MirrorSprite.texture = pick_random_eyes
	MirrorIris.texture = match_random_iris
	eye_prefab.eye_mirror.texture = pick_random_eyes
	eye_prefab.iris_mirror.texture = match_random_iris
	
	eye_prefab.eye_mirror.position.y = random_numb
	eye_prefab.iris_mirror.position.y = random_numb
	eye_prefab.eye_sprite.position.y = random_numb
	eye_prefab.iris_sprite.position.y = random_numb


func random_mouth():
	var random_numb = randf_range(100,200)
	var pick_random_mouth = MouthOption.pick_random()
	mouth_prefab.mouth_sprite.texture = pick_random_mouth
	mouth_prefab.mouth_sprite.position.y = random_numb

func random_nose():
	var random_numb = randf_range(100,200)
	var pick_random_nose = NoseOption.pick_random()
	nose_prefab.nose_sprite.texture = pick_random_nose
	nose_prefab.nose_sprite.position.y = random_numb

func random_brows():
	var random_numb = randf_range(-200,50)
	var pick_random_brows = BrowOption.pick_random()
	var MirrorSprite = brow_prefab.get_node("BrowSprite")
	MirrorSprite.texture = pick_random_brows
	brow_prefab.brow_mirror.texture = pick_random_brows
	brow_prefab.brow_mirror.position.y = random_numb
	brow_prefab.brow_sprite.position.y = random_numb

func random_button_pressed():
	random_eyes()
	random_mouth()
	random_brows()
	random_nose()

func _on_color_picker_color_changed(color: Color) -> void:
	newColor = $"UI/Color Panel/ColorPicker".color
	#PINK = Color(newColor)
	print(newColor)
	print("PINK: ", PINK)
	

func get_color_options() -> Array:
	return [PINK, ORANGE, YELLOW, GREEN, TEAL, BLUE, RED, PURPLE, WHITE]


func _on_color_panel_gui_input(event) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			color_panel.visible = false
			
			newColor = $"UI/Color Panel/ColorPicker".color
			color_option[selected_button_index] = newColor
			
			
			clear_color_buttons()
			create_Color_Option_button()
			color_sprite_change(selected_button_index)
