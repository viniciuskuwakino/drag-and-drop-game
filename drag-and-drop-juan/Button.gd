extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	var node = get_tree().get_nodes_in_group("check")
	#node[0].wrong_answer()
	#node[1].right_answer()
	for i in range(len(node)):
		#print(node[i].get_image_name())
		#print(ImgData.get_img_name(i))
		if node[i].get_image_name() == ImgData.get_img_name(i):
			node[i].right_answer()
		else:
			node[i].wrong_answer()
			
		print(node[i].get_image_name())
		#print("Especie: " + i.name)
		#print("ID imagem: " + str(i.id_image) + ", ID box: " + str(i.boxId))
