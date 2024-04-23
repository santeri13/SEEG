extends Node2D

signal pressedEnter

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
var records_counter = 0

func _ready():
	load_data()
	
	##var f = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ)
	##var emails = f.get_as_text().split("\n")
	##f.close()
	##emails.remove_at(emails.size()-1)
	
	var emails = []
	emails.append("support_admin@utcorp.com,Today tasks,Today's task involves updating the tracking code ZP9538. Change the arrival destination from Estonia to Helsinki and the arrival date to 21.05.2024. Also there's a modification required for GV4210. Update the departure date to 17.01.2024.,OK,''")
	emails.append("tech_guy@utcorpi.com,VPN access chnage,Can you change your VPN path to this 101.0.0.0/24,malisiouse,''")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$GameStart/Vpn.connect("hacked",_hacked_message)
	$GameStart/Email.connect("RightReport",_correct_report)
	$GameStart/Email.connect("WrongReport",_wrong_report)
	$GameStart/RecordApp.connect("RecordChange",_record_chnage)
	$GameStart/RecordApp.connect("FalseChange",_false_change)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_4_pressed():
	$GameStart/Vpn.show()


func _on_button_3_pressed():
	$GameStart/WorkChat.show()


func _on_button_2_pressed():
	print(get_children())
	if $GameStart/Email.has_method("_on_inbox_pressed"):
		$GameStart/Email._on_inbox_pressed()
	$GameStart/Email.show()
	$GameStart/List_of_tasks/Text_List_of_task.text = "Tasks:\n Number ZP9538: \n \t arrival destination from Estonia to Helsinki \n \t arrival time to 21.05.2024 \n GV4210: \n \t departure to 17.01.2024"


func _on_button_pressed():
	$GameStart/RecordApp.show()


func _on_close_pressed_Email():
	$GameStart/Email.hide()


func _on_close_pressed_VPN():
	$GameStart/Vpn.hide()


func _on_close_pressed_WorkChat():
	$GameStart/WorkChat.hide()


func _on_close_pressed_RecordApp():
	$GameStart/RecordApp.hide()
	
func _hacked_message():
	$Show_text.text = "Manager: we recive from our team that someone is chnanged records in our system. IT is comming from your credentials.
	It is good that we have backups, next time pay close attention what you do.\n Press eneter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()

func _correct_report():
	$Show_text.text = "We checked your report, great job"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	records_counter = records_counter + 1
	if records_counter == 3:
		$Next_day.show()
	
func _wrong_report():
	$Show_text.text = "We checked your report, with this email is all right, please be more cautios next time"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()
	
func _input(event):
	if event.as_text() == "Enter":
		pressedEnter.emit()

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

func read_mistakes():
	mistakes=mistakes+1
	print(mistakes)
	if mistakes == 5:
		$GameOver.show()
	
func _record_chnage():
	records_counter = records_counter + 1
	if records_counter == 3:
		$Next_day.show()

func _false_change():
	$Show_text.text = "We find that infromtion from record was no right"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()
	
func _on_next_day_pressed():
	level = level+1
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
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/Level2.tscn")


func _on_exit_pressed():
	level = 0
	mistakes = 0
	money = 10000
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
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/menu.tscn")


func _on_menu_pressed():
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
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/menu.tscn")
