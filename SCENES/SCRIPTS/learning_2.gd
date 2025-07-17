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
@onready var color_button_container: HBoxContainer = $UI/HBoxContainer2


const MAKE_BUTTON_WHITE = preload("res://SHADER/Make Button White.tres")
const MAKE_BUTTON_BLACK = preload("res://SHADER/Make Button Black.tres")
const BUTTON_CLICKED = preload("res://SHADER/ButtonClicked.tres")

@onready var body_prefab: Node2D = $UI/BodyPrefab
@onready var eye_prefab: Node2D = $UI/EyePrefab
@onready var mouth_prefab: Node2D = $UI/MouthPrefab
@onready var brow_prefab: Node2D = $UI/BrowPrefab
@onready var nose_prefab: Node2D = $UI/NosePrefab
@onready var stash_prefab: Node2D = $UI/StashPrefab
@onready var extra_prefab: Node2D = $UI/ExtraPrefab
@onready var beard_prefab: Node2D = $UI/BeardPrefab
@onready var scar_prefab: Node2D = $UI/ScarPrefab
@onready var hair_prefab: Node2D = $UI/HairPrefab
@onready var limb_prefab: Node2D = $UI/LimbPrefab


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

const DICE_ICON = preload("res://ART/BUTTON ART/Dice Icon.png")

const BEARD_ICON = preload("res://ART/BUTTON ART/Beard Icon.png")
const CURL_ICON = preload("res://ART/BUTTON ART/Curl Icon.png")
const HAND_ICON = preload("res://ART/BUTTON ART/hand Icon.png")
const SCAR_ICON = preload("res://ART/BUTTON ART/Scar Icon.png")
const STACH_ICON = preload("res://ART/BUTTON ART/Stach Icon.png")


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
const EYE_BANANA = preload("res://ART/EYES ART/Eye Banana.png")
const EYE_BETTY = preload("res://ART/EYES ART/Eye Betty.png")
const EYE_BLAND = preload("res://ART/EYES ART/Eye Bland.png")
const EYE_SAD = preload("res://ART/EYES ART/Eye Sad.png")
const EYE_SQUIGLE = preload("res://ART/EYES ART/Eye Squigle.png")
const EYE_SQUINT = preload("res://ART/EYES ART/Eye Squint.png")


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
const EYE_BANANA_IRIS = null
const EYE_BETTY_IRIS = null
const EYE_BLAND_IRIS = null
const EYE_SAD_IRIS = null
const EYE_SQUIGLE_IRIS = null
const EYE_SQUINT_IRIS = null


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


const HAIR_BEARD = preload("res://ART/MOUTH ART/Hair Beard.png")
const HAIR_CHIN_WHISKER = preload("res://ART/MOUTH ART/Hair ChinWhisker.png")
const HAIR_CURLY_STACH = preload("res://ART/MOUTH ART/Hair CurlyStach.png")
const HAIR_FRENCH = preload("res://ART/MOUTH ART/Hair French.png")
const HAIR_MOP = preload("res://ART/MOUTH ART/Hair Mop.png")
const HAIR_PATCH = preload("res://ART/MOUTH ART/Hair Patch.png")
const HAIR_PENCIL = preload("res://ART/MOUTH ART/Hair Pencil.png")
const HAIR_STACH = preload("res://ART/MOUTH ART/Hair Stach.png")
const HAIR_WHISKERS = preload("res://ART/MOUTH ART/Hair Whiskers.png")
const HAIR_WIDE = preload("res://ART/MOUTH ART/Hair Wide.png")

const EXTRA_BOW = preload("res://ART/MOUTH ART/Extra Bow.png")
const EXTRA_BOWLER_HAT = preload("res://ART/MOUTH ART/Extra BowlerHat.png")
const EXTRA_BOWY = preload("res://ART/MOUTH ART/Extra Bowy.png")
const EXTRA_CLIP = preload("res://ART/MOUTH ART/Extra Clip.png")
const EXTRA_FLOWER = preload("res://ART/MOUTH ART/Extra Flower.png")
const EXTRA_GLASSES = preload("res://ART/MOUTH ART/Extra Glasses.png")
const EXTRA_HALO = preload("res://ART/MOUTH ART/Extra Halo.png")
const EXTRA_HORN = preload("res://ART/MOUTH ART/Extra Horn.png")
const EXTRA_MONOCLE = preload("res://ART/MOUTH ART/Extra Monocle.png")

const HAIR_COMBOVER = preload("res://ART/HAIR/Hair Combover.png")
const HAIR_EMO = preload("res://ART/HAIR/Hair Emo.png")
const HAIR_HOMER = preload("res://ART/HAIR/Hair Homer.png")
const HAIR_MOHAWK = preload("res://ART/HAIR/Hair Mohawk.png")
const ARMS_1 = preload("res://ART/LIMBS/ARMS 1.png")
const SCAR_STITCH = preload("res://ART/SCAR/Scar Stitch.png")

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
var GenerateOption =[DICE_ICON, QUESTION_MARK_ICON]
var EyeOption = [EYE_ALMOND, EYE_ANIME, EYE_BIG, EYE_BLINK, EYE_CLASSIC, EYE_CROSSED, EYE_DONE,
EYE_GURL, EYE_INTENSE, EYE_KIRBY, EYE_LINE, EYE_REALISH, EYE_ROUND, EYE_SHARP, EYE_STARE,
EYE_TIC_TAC, EYE_TRAUMA, EYE_TWINKLE, EYE_U, EYE_WOBLE, FLOOF_GIDDY, EYE_BANANA, EYE_BETTY
,EYE_BLAND, EYE_SAD, EYE_SQUIGLE, EYE_SQUINT]
var IrisOption = [EYE_ALMOND_IRIS, EYE_ANIME_IRIS, EYE_BIG_IRIS, EYE_BLINK_IRIS,
EYE_CLASSIC_IRIS, EYE_CROSSED_IRIS, EYE_DONE_IRIS, EYE_GURL_IRIS, EYE_INTENSE_IRIS,
EYE_KIRBY_IRIS, EYE_LINE_IRIS, EYE_REALISH_IRIS, EYE_ROUND_IRIS, EYE_SHARP_IRIS,
EYE_STARE_IRIS, EYE_TIC_TAC_IRIS, EYE_TRAUMA_IRIS, EYE_TWINKLE_IRIS, EYE_U_IRIS, EYE_WOBLE_IRIS,
FLOOF_GIDDY_IRIS, EYE_BANANA_IRIS, EYE_BETTY_IRIS,EYE_BLAND_IRIS, EYE_SAD_IRIS, EYE_SQUIGLE_IRIS, EYE_SQUINT_IRIS]

var MouthOption = [MOUTH_BEAN, MOUTH_CHEEKY_GRIN, MOUTH_GRIN, MOUTH_JOJO,
MOUTH_KIRBY, MOUTH_LIP, MOUTH_LIPS, MOUTH_POUT, MOUTH_SHARP, MOUTH_SMIRK, MOUTH_SMOLLSMILE,
MOUTH_SMUG, MOUTH_SSSSH, MOUTH_TOOF, MOUTH_TREE, MOUTH_V, MOUTH_W ]
var BrowOption = [EMPTY, BROW_BLOCK, BROW_BRICK, BROW_CHONK, BROW_CLASSIC, BROW_FROWN, BROW_HAIRY,
BROW_HAT, BROW_INTENSE, BROW_PRESSED, BROW_ROUND_BLOCK, BROW_ROUNDISH, BROW_SHWONK, BROW_SLICK, BROW_SWOOP, BROW_TEAR]
var NoseOption = [EMPTY, NOSE_BLOB, NOSE_BUTTON, NOSE_CAT, NOSE_CLOWN, NOSE_FLARE, NOSE_GREMLIN, NOSE_REALISH,
NOSE_SQUIDWARD, NOSE_VOLDY,NOSE_MUSH, NOSE_PEAR, NOSE_SCARY, NOSE_SIDE_C, NOSE_SIDE_V, NOSE_SIDE, NOSE_SKULL, NOSE_SMOLL]
var HairOption = [EMPTY, HAIR_BEARD, HAIR_CHIN_WHISKER, HAIR_CURLY_STACH, HAIR_FRENCH, HAIR_MOP, HAIR_PATCH, HAIR_PENCIL, HAIR_STACH, HAIR_WHISKERS, HAIR_WIDE]
var TopStashOption = [EMPTY, HAIR_CURLY_STACH, HAIR_FRENCH, HAIR_MOP, HAIR_PENCIL, HAIR_STACH, HAIR_WHISKERS, HAIR_WIDE]
var BottomStashOption = [EMPTY, HAIR_BEARD, HAIR_CHIN_WHISKER, HAIR_PATCH]
var HairFrontOption = [EMPTY, HAIR_COMBOVER, HAIR_EMO, HAIR_HOMER, HAIR_MOHAWK]
var LimbOption = [EMPTY, ARMS_1]
var ScarOption = [EMPTY, SCAR_STITCH]
var ExtraOption = [ EXTRA_BOW, EXTRA_BOWLER_HAT, EXTRA_BOWY, EXTRA_CLIP, EXTRA_FLOWER, EXTRA_GLASSES, EXTRA_HALO, EXTRA_HORN,EXTRA_MONOCLE]


var CategoryOption = [BODY_ICON, EYE_ICON, MOUTH_ICON, BROW_ICON, NOSE_ICON, HAIR_ICON, EXTRA_ICON]
var ColorOption = [PINK, ORANGE, YELLOW, GREEN, TEAL, BLUE, RED, PURPLE, WHITE]
var BodyOption = [HAND_ICON, CURL_ICON, SCAR_ICON]
var StashOption = [BEARD_ICON, STACH_ICON]
enum Category {BODY, EYE, MOUTH, BROW, NOSE ,MUSTACHE, ACCESSORY, LIMB, HAIR, SCAR, BEARD, STASH}


var page_index
var page = 0
var EYES
var MOUTHS
var category_index

var eye_sprite
var iris_sprite
var brow_sprite
var stash_sprite
var beard_sprite
var extra_sprite
var limb_sprite
var hair_sprite
var scar_sprite

var current_category = 1
var cat_eyes
var cat_mouth
var cat_brows
var current_sprite_eye: Sprite2D = null
var current_sprite_mouth: Sprite2D = null
var current_sprite_brow: Sprite2D = null
var current_sprite_nose: Sprite2D = null
var current_sprite_stash: Sprite2D = null
var current_sprite_extra: Sprite2D = null
var current_sprite_limb: Sprite2D = null
var current_sprite_scar: Sprite2D = null
var current_sprite_beard: Sprite2D = null
var current_sprite_hair: Sprite2D = null


var Item_up_pressed: bool = false
var Item_down_pressed: bool = false
var Item_zoom_pressed:  bool = false
var Item_shrink_pressed:  bool = false
var Item_further_pressed:  bool = false
var Item_closer_pressed:  bool = false
var Item_rotr_pressed:  bool = false
var Item_rotl_pressed:  bool = false

var selected_button_index := -1
var selected_button = null
var colorHue
var newColor
var color_option = get_color_options()

var sub_category_open = false
var current_sub_category_container:VBoxContainer = null


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_eye_option_buttons()
	create_Icon_option_buttons()
	create_extra_options()
	create_Color_Option_button()
	
	stash_prefab.stash_sprite.texture = EMPTY
	beard_prefab.beard_sprite.texture = EMPTY
	hair_prefab.hair_sprite.texture = EMPTY
	scar_prefab.scar_sprite.texture = EMPTY
	limb_prefab.limb_sprite.texture = EMPTY
	extra_prefab.extra_sprite.texture = EMPTY
	
	#ROUND_BUTTON_PREFAB.material = BUTTON_CLICKED
	
	body_prefab.modulate = ColorOption[0]
	nose_prefab.modulate = ColorOption[0]
	eye_prefab.iris_sprite.modulate = ColorOption[8]
	eye_prefab.iris_mirror.modulate = ColorOption[8]
	brow_prefab.modulate = ColorOption[8]
	limb_prefab.modulate = ColorOption[0]
	hair_prefab.modulate = ColorOption[0]
	extra_prefab.modulate = ColorOption[2]



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
	for x in 2:
		var roundButton = ROUND_BUTTON_PREFAB.instantiate()
		var GenerateButtonsprite = roundButton.get_node("CategorySprite")
		GenerateButtonsprite.texture = GenerateOption[x]
		extra_options.add_child(roundButton)
		if x == 0:
			roundButton.pressed.connect(random_button_pressed)
		else:
			roundButton.pressed.connect(info_button_pressed)

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

func create_stash_option_buttons():
	for index_on_page in 9:
		var hair_button = BUTTON_PREFAB.instantiate()
		hair_sprite = hair_button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= TopStashOption.size(): 
			break
		hair_sprite.texture = TopStashOption[index]
		option_container.add_child(hair_button)
		hair_button.pressed.connect(button_is_pressed.bind(hair_sprite.texture))

func create_beard_option_buttons():
	for index_on_page in 9:
		var beard_button = BUTTON_PREFAB.instantiate()
		beard_sprite = beard_button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= BottomStashOption.size(): 
			break
		beard_sprite.texture = BottomStashOption[index]
		option_container.add_child(beard_button)
		beard_button.pressed.connect(button_is_pressed.bind(beard_sprite.texture))

func create_extra_option_buttons():
	for index_on_page in 9:
		var extra_button = BUTTON_PREFAB.instantiate()
		extra_sprite = extra_button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= ExtraOption.size(): 
			break
		extra_sprite.texture = ExtraOption[index]
		option_container.add_child(extra_button)
		extra_button.pressed.connect(button_is_pressed.bind(extra_sprite.texture))

func create_scar_option_buttons():
	for index_on_page in 9: #Change back to 9
		var scar_button = BUTTON_PREFAB.instantiate()
		scar_sprite =  scar_button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= ScarOption.size(): 
			break
		scar_sprite.texture = ScarOption[index]
		option_container.add_child(scar_button)
		scar_button.pressed.connect(button_is_pressed.bind(scar_sprite.texture))

func create_limb_option_buttons():
	for index_on_page in 9: #Change back to 9
		var limb_button = BUTTON_PREFAB.instantiate()
		limb_sprite =  limb_button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= LimbOption.size(): 
			break
		limb_sprite.texture = LimbOption[index]
		option_container.add_child(limb_button)
		limb_button.pressed.connect(button_is_pressed.bind(limb_sprite.texture))

func create_hair_option_buttons():
	for index_on_page in 9: #Change back to 9
		var hair_button = BUTTON_PREFAB.instantiate()
		hair_sprite =  hair_button.get_node("OptionSprite")
		var index = index_on_page + (page * 9)
		if index >= HairFrontOption.size(): 
			break
		hair_sprite.texture = HairFrontOption[index]
		option_container.add_child(hair_button)
		hair_button.pressed.connect(button_is_pressed.bind(hair_sprite.texture))


func create_Icon_option_buttons():
	for category_index in 7:
		var roundButton = ROUND_BUTTON_PREFAB.instantiate()
		var categorysprite = roundButton.get_node("CategorySprite")
		categorysprite.texture = CategoryOption[category_index]
		#sprite.scale = Vector2(0.85,0.85)
		h_box_container.scale = Vector2(0.35,0.35)
		h_box_container.add_child(roundButton)
		roundButton.pressed.connect(category_button_pressed.bind(roundButton, category_index))
		

func create_Color_Option_button():
	#var colors = get_color_options()
	for color_index in 9:
		var colorButton = COLOR_SELECT_PREFAB.instantiate()
		colorHue = colorButton.get_node("ColorRect")
		#colorHue.color = ColorOption[color_index]
		colorHue.color = color_option[color_index]
		color_button_container.add_child(colorButton)
		colorButton.pressed.connect(color_sprite_change.bind(color_index))
		colorButton.gui_input.connect(_on_color_button_gui_input.bind(colorButton))

func _on_color_button_gui_input(event, colorButton) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			for i in color_option.size():
				if colorButton.get_node("ColorRect").color == color_option[i]:
					selected_button_index = i
					break
			#print("pressed")
			color_panel.global_position = colorButton.get_global_position() + Vector2(0, colorButton.size.y/2)
			color_panel.visible = true



func page_mouth():
	clear_option_buttons()
	create_mouth_option_buttons()


func _on_page_up_pressed() -> void:
	if page > 0:
		page -= 1
		clear_option_buttons()
		if current_category == Category.EYE:
			create_eye_option_buttons()
		if current_category == Category.MOUTH:
			create_mouth_option_buttons()
		if current_category == Category.BROW:
			create_brow_option_buttons()
		if current_category == Category.NOSE:
			create_nose_option_buttons()
		if current_category == Category.ACCESSORY:
			create_extra_option_buttons()
		if current_category == Category.BEARD:
			create_extra_option_buttons()
		if current_category == Category.STASH:
			create_extra_option_buttons()
		if current_category == Category.HAIR:
			create_extra_option_buttons()
		if current_category == Category.LIMB:
			create_extra_option_buttons()


func _on_page_down_pressed() -> void:
	if current_category == Category.EYE:
		if (page + 1) * 9 < EyeOption.size():
			page += 1
			clear_option_buttons()
			create_eye_option_buttons()
	if current_category == Category.MOUTH:
		if (page + 1) * 9 < MouthOption.size():
			page += 1
			clear_option_buttons()
			create_mouth_option_buttons()
	if current_category == Category.BROW:
		if (page + 1) * 9 < BrowOption.size():
			page += 1
			clear_option_buttons()
			create_brow_option_buttons()
	if current_category == Category.NOSE:
		if (page + 1) * 9 < NoseOption.size():
			page += 1
			clear_option_buttons()
			create_nose_option_buttons()
	if current_category == Category.STASH:
		if (page + 1) * 9 < HairOption.size():
			page += 1
			clear_option_buttons()
			create_stash_option_buttons()
	if current_category == Category.ACCESSORY:
		if (page + 1) * 9 < ExtraOption.size():
			page += 1
			clear_option_buttons()
			create_extra_option_buttons()
	if current_category == Category.BEARD:
		if (page + 1) * 9 < ExtraOption.size():
			page += 1
			clear_option_buttons()
			create_beard_option_buttons()
	if current_category == Category.LIMB:
		if (page + 1) * 9 < ExtraOption.size():
			page += 1
			clear_option_buttons()
			create_limb_option_buttons()
	if current_category == Category.HAIR:
		if (page + 1) * 9 < ExtraOption.size():
			page += 1
			clear_option_buttons()
			create_hair_option_buttons()

func sub_category_1_button_pressed(body_subcat_index , container):
	print(category_index)
	current_sub_category_container = null
	if  body_subcat_index == 0:
		category_index = Category.LIMB
		page = 0
		current_category = Category.LIMB
		clear_body_sub_category_buttons(container)
		clear_option_buttons()
		create_limb_option_buttons()
	if  body_subcat_index == 1:
		category_index = Category.HAIR
		page = 0
		current_category = Category.HAIR
		clear_body_sub_category_buttons(container)
		clear_option_buttons()
		create_hair_option_buttons()
	if  body_subcat_index == 2:
		category_index = Category.SCAR
		page = 0
		current_category = Category.SCAR
		clear_body_sub_category_buttons(container)
		clear_option_buttons()
		create_scar_option_buttons()

func sub_category_2_button_pressed(stash_subcat_index, container):
	print(category_index)
	current_sub_category_container = null
	if  stash_subcat_index == 0:
		category_index = Category.BEARD
		page = 0
		current_category = Category.BEARD
		clear_stash_sub_category_buttons(container)
		clear_option_buttons()
		create_beard_option_buttons()
	if  stash_subcat_index == 1:
		category_index = Category.STASH
		page = 0
		current_category = Category.STASH
		clear_stash_sub_category_buttons(container)
		clear_option_buttons()
		create_stash_option_buttons()


func category_button_pressed(button, category_index):
	#current_sub_category_container = null
	
	if selected_button:
		selected_button.material = null
	button.material = BUTTON_CLICKED
	selected_button = button
	
	print(category_index)
	self.category_index = category_index
	if category_index == Category.BODY:
		if current_sub_category_container:
			clear_body_sub_category_buttons(current_sub_category_container)
			current_sub_category_container.queue_free()
			current_sub_category_container = null
			return
		else:
			current_category = Category.BODY
			create_body_sub_category(button)
	if  category_index == Category.EYE:
		page = 0
		current_category = Category.EYE
		clear_option_buttons()
		create_eye_option_buttons()
		if current_sub_category_container:
			current_sub_category_container.queue_free()
			current_sub_category_container = null
	if  category_index == Category.MOUTH:
		page = 0
		current_category = Category.MOUTH
		clear_option_buttons()
		create_mouth_option_buttons()
		if current_sub_category_container:
			current_sub_category_container.queue_free()
			current_sub_category_container = null
	if  category_index == Category.BROW:
		page = 0
		current_category = Category.BROW
		clear_option_buttons()
		create_brow_option_buttons()
		if current_sub_category_container:
			current_sub_category_container.queue_free()
			current_sub_category_container = null
	if  category_index == Category.NOSE:
		page = 0
		current_category = Category.NOSE
		clear_option_buttons()
		create_nose_option_buttons()
		if current_sub_category_container:
			current_sub_category_container.queue_free()
			current_sub_category_container = null
	if  category_index == Category.MUSTACHE:
		if current_sub_category_container:
			clear_stash_sub_category_buttons(current_sub_category_container)
			current_sub_category_container.queue_free()
			current_sub_category_container = null
			return
		else:
			current_category = Category.MUSTACHE
			create_stash_sub_category(button)
	if  category_index == Category.ACCESSORY:
		page = 0
		current_category = Category.ACCESSORY
		clear_option_buttons()
		create_extra_option_buttons()
		if current_sub_category_container:
			current_sub_category_container.queue_free()
			current_sub_category_container = null


func create_body_sub_category(button):
	var v_box_container = VBoxContainer.new()
	v_box_container.scale = Vector2(0.25,0.25)
	$UI.add_child(v_box_container)
	
	var button_pos = button.get_global_position()
	var vbox_pos = button_pos + Vector2(10,85)
	v_box_container.global_position = vbox_pos
	
	current_sub_category_container = v_box_container
	
	for body_subcat_index in BodyOption.size():
		var roundButton = ROUND_BUTTON_PREFAB.instantiate()
		var categorysprite = roundButton.get_node("CategorySprite")
		#v_box_container.global_position = roundButton.get_global_position()
		categorysprite.texture = BodyOption[body_subcat_index]
		v_box_container.add_child(roundButton)
		roundButton.pressed.connect(sub_category_1_button_pressed.bind(body_subcat_index, v_box_container))
		
func create_stash_sub_category(button):
	var v_box_container = VBoxContainer.new()
	v_box_container.scale = Vector2(0.25,0.25)
	$UI.add_child(v_box_container)
	
	var button_pos = button.get_global_position()
	var vbox_pos = button_pos + Vector2(10,85)
	v_box_container.global_position = vbox_pos
	
	current_sub_category_container = v_box_container
	
	for stash_subcat_index in StashOption.size():
		var roundButton = ROUND_BUTTON_PREFAB.instantiate()
		var categorysprite = roundButton.get_node("CategorySprite")
		#v_box_container.global_position = roundButton.get_global_position()
		categorysprite.texture = StashOption[stash_subcat_index]
		v_box_container.add_child(roundButton)
		roundButton.pressed.connect(sub_category_2_button_pressed.bind(stash_subcat_index, v_box_container))

func clear_body_sub_category_buttons(container):
	for child in container.get_children():
		container.remove_child(child)
		child.queue_free()

func clear_stash_sub_category_buttons(container):
	#print("CLEAR")
	for child in container.get_children():
		container.remove_child(child)
		child.queue_free()

func color_sprite_change(color_index):
	var selected_color = color_option[color_index]
	if category_index == Category.BODY:
		body_prefab.modulate = selected_color
		nose_prefab.modulate = selected_color
		limb_prefab.modulate = selected_color
	if category_index == Category.EYE:
		eye_prefab.iris_sprite.modulate = selected_color
		eye_prefab.iris_mirror.modulate = selected_color
	if category_index == Category.MOUTH:
		mouth_prefab.modulate = selected_color
	if category_index == Category.BROW:
		brow_prefab.modulate = selected_color
	if category_index == Category.NOSE:
		nose_prefab.modulate = selected_color
	if category_index == Category.STASH:
		stash_prefab.modulate = selected_color
	if category_index == Category.ACCESSORY:
		extra_prefab.modulate = selected_color
	if category_index == Category.BEARD:
		beard_prefab.modulate = selected_color
	if category_index == Category.HAIR:
		hair_prefab.modulate = selected_color
	if category_index == Category.LIMB:
		limb_prefab.modulate = selected_color
 


func button_is_pressed(texture):
	change_texture_mouth(texture)
	change_texture_brow(texture)
	change_texture_nose(texture)
	change_texture_hair(texture)
	change_texture_extra(texture)
	change_texture_scar(texture)
	change_texture_stash(texture)
	change_texture_limb(texture)
	change_texture_beard(texture)
	

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
	if current_category == Category.MOUTH:
		mouth_prefab.mouth_sprite.texture = texture

func change_texture_nose(texture):
	if current_sprite_nose != null:
		nose_prefab.nose_sprite.texture = texture
	if current_category == Category.NOSE:
		nose_prefab.nose_sprite.texture = texture

func change_texture_brow(texture):
	var MirrorSprite = brow_prefab.get_node("BrowSprite")
	if current_sprite_brow != null:
		brow_prefab.brow_sprite.texture = texture
	if current_category == Category.BROW:
		MirrorSprite.texture = texture
		brow_prefab.brow_mirror.texture = texture

func change_texture_stash(texture):
	if current_sprite_stash != null:
		stash_prefab.stash_sprite.texture = texture
	if current_category == Category.STASH:
		stash_prefab.stash_sprite.texture = texture

func change_texture_extra(texture):
	if current_sprite_extra != null:
		extra_prefab.extra_sprite.texture = texture
	if current_category == Category.ACCESSORY:
		extra_prefab.extra_sprite.texture = texture

func change_texture_limb(texture):
	if current_sprite_limb != null:
		limb_prefab.limb_sprite.texture = texture
	if current_category == Category.LIMB:
		limb_prefab.limb_sprite.texture = texture

func change_texture_hair(texture):
	if current_sprite_hair != null:
		hair_prefab.hair_sprite.texture = texture
	if current_category == Category.HAIR:
		hair_prefab.hair_sprite.texture = texture

func change_texture_scar(texture):
	if current_sprite_scar != null:
		scar_prefab.scar_sprite.texture = texture
	if current_category == Category.SCAR:
		scar_prefab.scar_sprite.texture = texture

func change_texture_beard(texture):
	if current_sprite_beard != null:
		beard_prefab.beard_sprite.texture = texture
	if current_category == Category.BEARD:
		beard_prefab.beard_sprite.texture = texture

func Item_Up_Button_Pressed() -> void:
	Item_Up(0)

func Item_Up(delta):
	Item_up_pressed = true
	var item_move = 10
	if current_category == Category.EYE:
		if eye_prefab.position.y > -300:
			eye_prefab.position.y -= item_move * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.position.y > 100:
			mouth_prefab.position.y -= item_move * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_mirror.position.y > -320:
			brow_prefab.brow_mirror.position.y -= item_move * delta
			brow_prefab.brow_sprite.position.y -= item_move * delta
	if current_category == Category.NOSE:
		if nose_prefab.position.y > 70:
			nose_prefab.position.y -= item_move * delta
	if current_category == Category.ACCESSORY:
		if extra_prefab.position.y > 70:
			extra_prefab.position.y -= item_move * delta
	if current_category == Category.LIMB:
		if limb_prefab.position.y > 70:
			limb_prefab.position.y -= item_move * delta
	if current_category == Category.HAIR:
		if hair_prefab.position.y > 70:
			hair_prefab.position.y -= item_move * delta
	if current_category == Category.SCAR:
		if scar_prefab.position.y > 70:
			scar_prefab.position.y -= item_move * delta
	if current_category == Category.BEARD:
		if beard_prefab.position.y > 70:
			beard_prefab.position.y -= item_move * delta
	if current_category == Category.STASH:
		if stash_prefab.position.y > 70:
			stash_prefab.position.y -= item_move * delta
	if current_category == Category.BODY:
		if body_prefab.scale.y < 0.7:
			body_prefab.scale.y += 0.1 * delta
			body_prefab.position.y -= 40 * delta

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
	if current_category == Category.EYE:
		if eye_prefab.position.y < 430:
			eye_prefab.position.y += item_move * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.position.y < 470:
			mouth_prefab.position.y += item_move * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_sprite.position.y < 420:
			brow_prefab.brow_mirror.position.y += item_move * delta
			brow_prefab.brow_sprite.position.y += item_move * delta
	if current_category == Category.NOSE:
		if nose_prefab.position.y < 500:
			nose_prefab.position.y += item_move * delta
	if current_category == Category.ACCESSORY:
		if extra_prefab.position.y < 500:
			extra_prefab.position.y += item_move * delta
	if current_category == Category.LIMB:
		if limb_prefab.position.y < 500:
			limb_prefab.position.y += item_move * delta
	if current_category == Category.HAIR:
		if hair_prefab.position.y < 500:
			hair_prefab.position.y += item_move * delta
	if current_category == Category.SCAR:
		if scar_prefab.position.y < 500:
			scar_prefab.position.y += item_move * delta
	if current_category == Category.BEARD:
		if beard_prefab.position.y < 500:
			beard_prefab.position.y += item_move * delta
	if current_category == Category.STASH:
		if stash_prefab.position.y < 500:
			stash_prefab.position.y += item_move * delta
	if current_category == Category.BODY:
		if body_prefab.scale.y > 0.3:
			body_prefab.scale.y -= 0.1 * delta
			body_prefab.position.y += 40 * delta


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
	if current_category == Category.EYE:
		if eye_prefab.eye_sprite.scale > Vector2 (0.5,0.5):
			eye_prefab.eye_sprite.scale -= Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_sprite.scale -= Vector2(item_scale,item_scale) * delta
			eye_prefab.eye_mirror.scale -= Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_mirror.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.scale >= Vector2 (0.3,0.3):
			mouth_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_mirror.scale > Vector2 (0.3,0.3):
			brow_prefab.brow_mirror.scale -= Vector2(item_scale,item_scale) * delta
			brow_prefab.brow_sprite.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.NOSE:
		if nose_prefab.scale >= Vector2 (0.3,0.3):
			nose_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.ACCESSORY:
		if extra_prefab.scale >= Vector2 (0.3,0.3):
			extra_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.LIMB:
		if limb_prefab.scale >= Vector2 (0.3,0.3):
			limb_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.HAIR:
		if hair_prefab.scale >= Vector2 (0.3,0.3):
			hair_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.SCAR:
		if scar_prefab.scale >= Vector2 (0.3,0.3):
			scar_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.BEARD:
		if beard_prefab.scale >= Vector2 (0.3,0.3):
			beard_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.STASH:
		if stash_prefab.scale >= Vector2 (0.3,0.3):
			stash_prefab.scale -= Vector2(item_scale,item_scale) * delta
	if current_category == Category.BODY:
		if body_prefab.scale.y < 0.3:
			body_prefab.scale.y -= 0.1 * delta
			body_prefab.position.y -= 40 * delta
	
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
	if current_category == Category.EYE:
		if eye_prefab.eye_sprite.scale < Vector2 (1.5,1.5):
			eye_prefab.eye_sprite.scale += Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_sprite.scale += Vector2(item_scale,item_scale) * delta
			eye_prefab.eye_mirror.scale += Vector2(item_scale,item_scale) * delta
			eye_prefab.iris_mirror.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.scale < Vector2 (1.5,1.5):
			mouth_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_mirror.scale < Vector2 (1.5,1.5):
			brow_prefab.brow_mirror.scale += Vector2(item_scale,item_scale) * delta
			brow_prefab.brow_sprite.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.NOSE:
		if nose_prefab.scale < Vector2 (1.5,1.5):
			nose_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.ACCESSORY:
		if extra_prefab.scale < Vector2 (1.5,1.5):
			extra_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.LIMB:
		if limb_prefab.scale < Vector2 (1.5,1.5):
			limb_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.HAIR:
		if hair_prefab.scale < Vector2 (1.5,1.5):
			hair_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.SCAR:
		if scar_prefab.scale < Vector2 (1.5,1.5):
			scar_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.BEARD:
		if beard_prefab.scale < Vector2 (1.5,1.5):
			beard_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.STASH:
		if stash_prefab.scale < Vector2 (1.5,1.5):
			stash_prefab.scale += Vector2(item_scale,item_scale) * delta
	if current_category == Category.BODY:
		if body_prefab.scale.y < 0.7:
			body_prefab.scale.y += 0.1 * delta
			body_prefab.position.y -= 40 * delta

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
	if current_category == Category.EYE:
		if eye_prefab.eye_mirror.rotation > deg_to_rad(-180):
			eye_prefab.eye_mirror.rotation -= item_rot * delta
			eye_prefab.iris_mirror.rotation -= item_rot * delta
			eye_prefab.eye_sprite.rotation += item_rot * delta
			eye_prefab.iris_sprite.rotation += item_rot * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.rotation > deg_to_rad(-180):
			mouth_prefab.rotation -= item_rot * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_sprite.rotation > deg_to_rad(-180):
			brow_prefab.brow_mirror.rotation -= item_rot * delta
			brow_prefab.brow_sprite.rotation += item_rot * delta
	if current_category == Category.NOSE:
		if nose_prefab.rotation > deg_to_rad(-180):
			nose_prefab.rotation -= item_rot * delta
	if current_category == Category.ACCESSORY:
		if extra_prefab.rotation > deg_to_rad(-180):
			extra_prefab.rotation -= item_rot * delta
	if current_category == Category.LIMB:
		if limb_prefab.rotation > deg_to_rad(-180):
			limb_prefab.rotation -= item_rot * delta
	if current_category == Category.HAIR:
		if hair_prefab.rotation > deg_to_rad(-180):
			hair_prefab.rotation -= item_rot * delta
	if current_category == Category.SCAR:
		if scar_prefab.rotation > deg_to_rad(-180):
			scar_prefab.rotation -= item_rot * delta
	if current_category == Category.BEARD:
		if beard_prefab.rotation > deg_to_rad(-180):
			beard_prefab.rotation -= item_rot * delta
	if current_category == Category.STASH:
		if stash_prefab.rotation > deg_to_rad(-180):
			stash_prefab.rotation -= item_rot * delta
	if current_category == Category.BODY:
		if body_prefab.rotation > deg_to_rad(-180):
			body_prefab.rotation -= item_rot * delta

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
	if current_category == Category.EYE:
		if eye_prefab.eye_mirror.rotation < deg_to_rad(180):
			eye_prefab.eye_mirror.rotation += item_rot * delta
			eye_prefab.eye_sprite.rotation -= item_rot * delta
			eye_prefab.iris_mirror.rotation += item_rot * delta
			eye_prefab.iris_sprite.rotation -= item_rot * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.rotation < deg_to_rad(180):
			mouth_prefab.rotation += item_rot * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_sprite.rotation < deg_to_rad(180):
			brow_prefab.brow_mirror.rotation += item_rot * delta
			brow_prefab.brow_sprite.rotation -= item_rot * delta
	if current_category == Category.NOSE:
		if nose_prefab.rotation < deg_to_rad(180):
			nose_prefab.rotation += item_rot * delta
	if current_category == Category.ACCESSORY:
		if extra_prefab.rotation < deg_to_rad(180):
			extra_prefab.rotation += item_rot * delta
	if current_category == Category.LIMB:
		if limb_prefab.rotation < deg_to_rad(180):
			limb_prefab.rotation += item_rot * delta
	if current_category == Category.HAIR:
		if hair_prefab.rotation < deg_to_rad(180):
			hair_prefab.rotation += item_rot * delta
	if current_category == Category.SCAR:
		if scar_prefab.rotation < deg_to_rad(180):
			scar_prefab.rotation += item_rot * delta
	if current_category == Category.BEARD:
		if beard_prefab.rotation < deg_to_rad(180):
			beard_prefab.rotation += item_rot * delta
	if current_category == Category.STASH:
		if stash_prefab.rotation < deg_to_rad(180):
			stash_prefab.rotation += item_rot * delta
	if current_category == Category.BODY:
		if body_prefab.rotation < deg_to_rad(180):
			body_prefab.rotation += item_rot * delta

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
	if current_category == Category.EYE:
		if eye_prefab.eye_sprite.position.x < 350:
			eye_prefab.eye_mirror.position.x -= item_pos * delta
			eye_prefab.eye_sprite.position.x += item_pos * delta
			eye_prefab.iris_mirror.position.x -= item_pos * delta
			eye_prefab.iris_sprite.position.x += item_pos * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.scale.x < 1.5:
			mouth_prefab.scale.x += item_scale * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_sprite.position.x < 350:
			#print(brow_sprite.position.x)
			brow_prefab.brow_sprite.position.x += item_pos * delta
			brow_prefab.brow_mirror.position.x -= item_pos * delta
	if current_category == Category.NOSE:
		if nose_prefab.scale.x < 1.25:
			nose_prefab.scale.x += item_scale * delta

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
	if current_category == Category.EYE:
		if eye_prefab.eye_sprite.position.x > 50:
			eye_prefab.eye_mirror.position.x += item_pos * delta
			eye_prefab.eye_sprite.position.x -= item_pos * delta
			eye_prefab.iris_mirror.position.x += item_pos * delta
			eye_prefab.iris_sprite.position.x -= item_pos * delta
	if current_category == Category.MOUTH:
		if mouth_prefab.scale.x > 0.25:
			mouth_prefab.scale.x -= item_scale * delta
	if current_category == Category.BROW:
		if brow_prefab.brow_sprite.position.x > 50:
			brow_prefab.brow_mirror.position.x += item_pos * delta
			brow_prefab.brow_sprite.position.x -= item_pos * delta
	if current_category == Category.NOSE:
		if nose_prefab.scale.x > 0.25:
			nose_prefab.scale.x -= item_scale * delta
			
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

func info_button_pressed():
	$InfoScreen.visible = !$InfoScreen.visible


func _on_color_picker_color_changed(color: Color) -> void:
	newColor = $"UI/Color Panel/ColorPicker".color
	#PINK = Color(newColor)
	#print(newColor)
	#print("PINK: ", PINK)
	

func get_color_options() -> Array:
	return [PINK, ORANGE, YELLOW, GREEN, TEAL, BLUE, RED, PURPLE, WHITE]


func _on_color_panel_gui_input(event) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			color_panel.visible = false
			
			newColor = $"UI/Color Panel/ColorPicker".color
			color_option[selected_button_index] = newColor
			
			
			var selected_color_button = color_button_container.get_child(selected_button_index)
			selected_color_button.get_node("ColorRect").color = color_option[selected_button_index]
			color_sprite_change(selected_button_index)
