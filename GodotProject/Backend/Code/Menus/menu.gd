extends Control

var save_path = "user://data.save"

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
var language = 0

var languages:Array[String] = ["en","ru","et"]

func _ready():
	load_data()
	change_language(languages[language])
	
func _on_start_pressed():
	match level:
		0:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Tutorial.tscn")
		1:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level1.tscn")
		2:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level2.tscn")
		3:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level3.tscn")
		4:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level4.tscn")
		5:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level5.tscn")
		6:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level6.tscn")
		7:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level7.tscn")
		8:
			save()
			get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level8.tscn")
		

func _on_encyclopedia_pressed():
	save()
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/Encyclopedia.tscn")


func _on_exit_pressed():
	save()
	get_tree().quit()

func create_save():
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
	var language = language
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
	file.store_var(language)
	
func save():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(level)
	file.store_var(mistakes)
	file.store_var(money)
	file.store_var(VPN)
	file.store_var(Wrong_path)
	file.store_var(Wrong_path)
	file.store_var(Maliciouse_link)
	file.store_var(Data_protection)
	file.store_var(Maiciouse_email)
	file.store_var(Maiciouse_email2)
	file.store_var(language)

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path,FileAccess.READ)
		level = file.get_var(level)
		mistakes = file.get_var(mistakes)
		money = file.get_var(money)
		VPN = file.get_var(VPN)
		Wrong_path = file.get_var(Wrong_path)
		Malisiouse_prize = file.get_var(Wrong_path)
		Maliciouse_link = file.get_var(Maliciouse_link)
		Data_protection = file.get_var(Data_protection)
		Maiciouse_email = file.get_var(Maiciouse_email)
		Maiciouse_email2 = file.get_var(Maiciouse_email2)
		language = file.get_var(language)
	else:
		create_save()

func change_language(lang:String) -> void:
	TranslationServer.set_locale(lang)


func _on_russian_icon_pressed():
	language = 1
	change_language(languages[1])


func _on_english_icon_pressed():
	language = 0
	change_language(languages[0])


func _on_estonian_icon_pressed():
	language = 2
	change_language(languages[2])
