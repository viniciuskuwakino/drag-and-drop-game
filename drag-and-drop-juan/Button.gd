extends Button

@onready var congratsPanel = get_node("%CongratsPanel")
@onready var coverPanel = get_node("%CoverPanel")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	var node = get_tree().get_nodes_in_group("check")
	var count = 0
	for i in range(len(node)):
		if node[i].get_image_name() == ImgData.get_img_name(i):
			node[i].right_answer()
			count += 1
		else:
			node[i].wrong_answer()
			
		#print(node[i].get_image_name())
		if count == len(node):
			congratsPanel.visible = true
			coverPanel.visible = true
			var tween = congratsPanel.create_tween()
			tween.tween_property(congratsPanel, "position", Vector2(350,200), 0.2).set_trans(Tween.TRANS_QUINT).set_ease(Tween.EASE_IN)
			tween.play()
			#print("VENCEU")
