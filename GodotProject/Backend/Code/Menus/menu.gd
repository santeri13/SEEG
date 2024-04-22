extends Control

var save_path = "user://data.save"

var level = 0

func _ready():
	load_data()
	
func _on_start_pressed():
	match level:
		0:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Tutorial.tscn")
		1:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level1.tscn")
		3:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level3.tscn")
		4:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level4.tscn")
		5:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level5.tscn")
		6:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level6.tscn")
		7:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level7.tscn")
		8:
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level8.tscn")
		

func _on_encyclopedia_pressed():
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/Encyclopedia.tscn")


func _on_exit_pressed():
	get_tree().quit()

func save():
	var level = 0
	var mistakes = 0
	var money = 10000
	var VPN = false
	var Wrong_path = false
	var Malisiouse_prize = false
	var Maliciouse_link = false
	var Data_protection = false
	var Maiciouse_email = false
	var Maiciouse_email2 = false
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(level)
	file.store_var(mistakes)
	file.store_var(money)
	file.store_var(VPN)
	file.store_var(Wrong_path)
	file.store_var(Malisiouse_prize)
	file.store_var(Maliciouse_link)
	file.store_var(Data_protection)
	file.store_var(Maiciouse_email)
	file.store_var(Maiciouse_email2)
	print("Save created")

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path,FileAccess.READ)
		level = file.get_var(level)
		print("Save loaded")
	else:
		save()
