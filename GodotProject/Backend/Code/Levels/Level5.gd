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
	emails.append("support_admin@utcorp.com,Today tasks,Adjustment required for NE9167: Change the arrival country to France. Also update needed for OI5832: Change the company name to Hellenic Logistics Solutions.,OK,''")
	emails.append("suto.kazuki@utcorp.com,Cyber check,Yestarday was cyberattack which changed our links for our resources. Right now our team worked on them and all is ok but for addtionla check every worker go py provided link www.itisofficial.com and check if all work correct,malisiouse,''")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ_WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$GameStart/Vpn.connect("hacked",_hacked_message)
	$GameStart/Email.connect("RightReport",_correct_report)
	$GameStart/Email.connect("WrongReport",_wrong_report)
	$GameStart/Email.connect("AnswerSend",_answer_send)
	$GameStart/WorkChat.connect("CredentalSend",_credential_send)
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
	$GameStart/Email.show()


func _on_button_pressed():
	$GameStart/RecordApp.show()
	
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
	
func _answer_send():
	$Show_text.text = "Answer send"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _credential_send():
	$GameStart/WorkChat.hide()
	$Show_text.text = "Manager: we recive from our team that someone is chnanged records in our system. IT is comming from your credentials.
	It is good that we have backups, next time pay close attention what you do.\n Press eneter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()
	
func _false_change():
	$Show_text.text = "We find that infromtion from record was no right"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()
	
	
func _input(event):
	print(event.as_text())
	if event.as_text() == "Enter":
		pressedEnter.emit()


func _on_close_pressed_Email():
	$GameStart/Email.hide()


func _on_close_pressed_Vpn():
	$GameStart/Vpn.hide()


func _on_close_pressed_WorkChat():
	$GameStart/WorkChat.hide()


func _on_close_pressed_RecordApp():
	$GameStart/RecordApp.hide()


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
	mistakes = mistakes+1
	if mistakes == 5:
		$GameOver.show()
	
func _record_chnage():
	records_counter = records_counter + 1
	if records_counter == 3:
		$Next_day.show()

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
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/Level6.tscn")


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


func _on_back_to_menu_pressed():
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
