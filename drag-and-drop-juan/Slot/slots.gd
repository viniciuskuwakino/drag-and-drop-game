extends PanelContainer

@onready var texture_rect = $TextureRect
@onready var border = $Sprite2D
var img_name = "vazio"
#@export var id_img = ""
#@export var id_img = ""

func _get_drag_data(at_position):
	
	set_drag_preview(get_preview())
	
	return texture_rect

func _can_drop_data(at_position, data):
	return data is TextureRect

func _drop_data(at_position, data):
	
	var temp = texture_rect.texture
	texture_rect.texture = data.texture
	data.texture = temp
	
	var temp_nome = texture_rect.nome
	texture_rect.nome = data.nome
	data.nome = temp_nome

func get_preview():
	var preview_texture = TextureRect.new()
	
	preview_texture.texture = texture_rect.texture
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(80, 80)
	
	var preview = Control.new()
	preview.add_child(preview_texture)
	
	return preview


func get_image_name():
	return texture_rect.nome

func wrong_answer():
	border.modulate = Color('red')

func right_answer():
	border.modulate = Color('green')

# Called when the node enters the scene tree for the first time.
func _ready():
	border.modulate = Color(255, 234, 212, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
