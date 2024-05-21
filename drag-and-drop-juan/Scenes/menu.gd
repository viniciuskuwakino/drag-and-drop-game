extends Control

@onready var creditsPanel = get_node("%CreditsPanel")

# Called when the node enters the scene tree for the first time.
func _ready():
	creditsPanel.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Fases/fase_1.tscn")


func _on_options_pressed():
	#print("Options")
	pass

func _on_credits_pressed():
	creditsPanel.visible = true


func _on_exit_pressed():
	get_tree().quit()


func _on_return_menu_pressed():
	creditsPanel.visible = false
