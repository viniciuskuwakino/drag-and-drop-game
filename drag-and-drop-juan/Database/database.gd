extends Node


var content : Dictionary

func _ready():
	var file = FileAccess.open("res://Database/db_fase1.json", FileAccess.READ)
	content = JSON.parse_string(file.get_as_text())
	file.close()

func get_img_name(id):
	return content[str(id)]["name"]
