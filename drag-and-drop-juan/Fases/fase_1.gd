extends Node2D

@onready var congratsPanel = get_node("%CongratsPanel")
@onready var coverPanel = get_node("%CoverPanel")

# Called when the node enters the scene tree for the first time.
func _ready():
	congratsPanel.visible = false
	coverPanel.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_return_menu_pressed():
	#print("PERTOU")
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
