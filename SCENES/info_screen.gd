extends Control

@onready var page_1: Control = $"Panel/Page 1"
@onready var page_2: Control = $"Panel/Page 2"

var Pages = [page_1, page_2]
enum Page {page_1, page_2}

var info_page = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show_page()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_page_next_pressed() -> void:
	print(info_page)
	if info_page < Pages.size()-1:
		info_page += 1
		show_page()

func _on_page_prev_pressed() -> void:
	print(info_page)
	if info_page > 0:
		info_page -= 1
		show_page()


func show_page():
	if info_page == Page.page_1:
			page_1.visible = true
			page_2.visible = false
	if info_page == Page.page_2:
			page_1.visible = false
			page_2.visible = true
