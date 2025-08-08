extends Sprite2D

@onready var podium: Sprite2D = $Podium
@onready var body_prefab: Node2D = $BodyPrefab
@onready var scar_prefab: Node2D = $ScarPrefab
@onready var eye_prefab: Node2D = $EyePrefab
@onready var brow_prefab: Node2D = $BrowPrefab
@onready var limb_prefab: Node2D = $LimbPrefab
@onready var beard_prefab: Node2D = $BeardPrefab
@onready var mouth_prefab: Node2D = $MouthPrefab
@onready var nose_prefab: Node2D = $NosePrefab
@onready var stash_prefab: Node2D = $StashPrefab
@onready var hair_prefab: Node2D = $HairPrefab
@onready var extra_prefab: Node2D = $ExtraPrefab


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var img_1:Image = podium.texture.get_image()
	var body_prefab_sprite = body_prefab.get_node("BodySprite")
	var img_2:Image = body_prefab_sprite.texture.get_image()
	var img_3:Image = podium.texture.get_image()
	var img_4:Image = podium.texture.get_image()
	var img_5:Image = podium.texture.get_image()
	var img_6:Image = podium.texture.get_image()
	var img_7:Image = podium.texture.get_image()
	var img_8:Image = podium.texture.get_image()
	
	var final_image := Image.create(2000,2000, false, Image.FORMAT_RGBA8)
	final_image.fill(Color(0, 0, 0, 0))
	
	final_image.blit_rect(img_2, Rect2(Vector2.ZERO, img_2.get_size()), body_prefab.position - podium.position)
	final_image.blit_rect(img_1, Rect2(Vector2.ZERO, img_1.get_size()), Vector2.ZERO)
	
	
	#print(final_image.save_png("res://SAVES/FloofMakerImage.png"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
