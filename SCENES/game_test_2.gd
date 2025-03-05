extends Node2D

#ART
const BODY_CLASSIC = preload("res://ART/Body Classic.png")
const BODY_TOLL = preload("res://ART/Body Toll.png")
const BODY_WIDE = preload("res://ART/Body Wide.png")
const EYE_CLASSIC = preload("res://ART/Eye Classic.png")
const EYE_ROUND = preload("res://ART/Eye Round.png")
const EYE_STARE = preload("res://ART/Eye Stare.png")
const MOUTH_KIRBY = preload("res://ART/Mouth Kirby.png")
const MOUTH_TOOF = preload("res://ART/Mouth Toof.png")
const MOUTH_TREE = preload("res://ART/Mouth Tree.png")

@onready var floofBody: TextureRect = $floofBody
@onready var grid_container: GridContainer = $UI/GridContainer
@onready var button: Button = $UI/GridContainer/Button
@onready var button_text: TextureRect = $UI/GridContainer/Button/ButtonText
@onready var floofEye: TextureRect = $floofEye
@onready var floof_eye_2: TextureRect = $floofEye2
@onready var floof_mouth: TextureRect = $floofMouth

signal buttonClick


func _ready() -> void:
	
	
	scaleTextures()
	floofBody.set_texture(BODY_CLASSIC)

func _process(delta: float) -> void:
	pass

func scaleTextures():
	floofBody.set_scale(Vector2(0.5,0.5))
	floofBody.set_position(Vector2(0,0))
	floofEye.set_scale(Vector2(0.5,0.5))
	floofEye.set_position(Vector2(300,200))
	floof_eye_2.set_scale(Vector2(0.5,0.5))
	floof_eye_2.set_position(Vector2(150,200))
	floof_mouth.set_scale(Vector2(0.5,0.5))
	floof_mouth.set_position(Vector2(220,270))

func changeTexture():
	pass


func _on_button_1_pressed() -> void:
	floofBody.set_texture(BODY_CLASSIC)


func _on_button_2_pressed() -> void:
	floofBody.set_texture(BODY_TOLL)


func _on_button_3_pressed() -> void:
	floofBody.set_texture(BODY_WIDE)


func _on_button_4_pressed() -> void:
	floofEye.set_texture(EYE_CLASSIC)
	floof_eye_2.set_texture(EYE_CLASSIC)


func _on_button_5_pressed() -> void:
	floofEye.set_texture(EYE_STARE)
	floof_eye_2.set_texture(EYE_STARE)


func _on_button_6_pressed() -> void:
	floofEye.set_texture(EYE_ROUND)
	floof_eye_2.set_texture(EYE_ROUND)


func _on_button_7_pressed() -> void:
	floof_mouth.set_texture(MOUTH_TREE)


func _on_button_8_pressed() -> void:
	floof_mouth.set_texture(MOUTH_TOOF)


func _on_button_9_pressed() -> void:
	floof_mouth.set_texture(MOUTH_KIRBY)
