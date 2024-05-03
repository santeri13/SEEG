extends Control

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
	emails.append("support_admin@utcorp.com,Today tasks,Adjustment required for BG1094: Change the departure country to Finland. Also correction needed for EC2675: Change the arrival date to 08.05.2024.,OK,''")
	emails.append("support_admin@utcorp.com,Additional tasks,Update needed for JN5204: Change the company name to Italian Express Logistics. Also modification required for KP9013: Change the departure date to 16.05.2024 and the arrival date to 20.05.2024.,OK,''")
	emails.append("suto.kazuki@utcorp.com,Problem with webpages,Our company lost some data related to workers from this department. Some data was restored but to finish procedure please go to www.legit.utcorpi.com and provide some information.,malisiouse,''")
	emails.append("tech_guy@utcorpi.com,VPN access chnage,Can you change your VPN path to 101.0.0.1/24. This is a new path for new tools; our team needs to check if it works properly.,malisiouse,''")
	emails.append("ralf.cout@utcorps.com,VPN access chnage,Our company updates information in the system and requires all personnel to mail their information with credentials. Please send your information by the end of the day.,malisiouse,This is my credentials")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ_WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$GameStart/Wallpaper/Vpn.connect("hacked",_hacked_message)
	$GameStart/Wallpaper/Email.connect("RightReport",_correct_report)
	$GameStart/Wallpaper/Email.connect("WrongReport",_wrong_report)
	$GameStart/Wallpaper/Email.connect("AnswerSend",_answer_send)
	$GameStart/Wallpaper/WorkChat.connect("CompanyWebpage",_companydata_send)
	$GameStart/Wallpaper/RecordApp.connect("RecordChange",_record_chnage)
	$GameStart/Wallpaper/RecordApp.connect("FalseChange",_false_change)
	$GameStart/Wallpaper/Vpn.connect("CloseVPN",_on_close_pressed_Vpn)
	$GameStart/Wallpaper/Email.connect("CloseEmail",_on_close_pressed_Email)
	$GameStart/Wallpaper/RecordApp.connect("CloseRecordApp",_on_close_pressed_RecordApp)
	$GameStart/Wallpaper/WorkChat.connect("CloseWorkChat",_on_close_pressed_WorkChat)
	$GameStart/Wallpaper/Book.connect("CloseBook",_close_book)
	$GameStart/Wallpaper/RecordApp.connect("WorkedWithRecord",_worked_number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_4_pressed():
	$GameStart/Wallpaper/Vpn.show()


func _on_button_3_pressed():
	$GameStart/Wallpaper/WorkChat.show()


func _on_button_2_pressed():
	if $GameStart/Wallpaper/Email.has_method("_on_inbox_pressed"):
		$GameStart/Wallpaper/Email._on_inbox_pressed()
	$GameStart/Wallpaper/Email.show()
	$GameStart/Wallpaper/List_of_tasks/Text_List_of_task.text = "Tasks:\nBG1094:\n\tarrival from Sweden to Finland\nEC2675:\n\tarrival date to 08.05.2024\nJN5204:\n\tcompany name to Italian Express Logistics\nKP9013:\n\tdeparture date to 16.05.2024\n\tarrival date to 20.05.2024"


func _on_button_pressed():
	$GameStart/Wallpaper/RecordApp.show()
	for child in $GameStart/Wallpaper.get_children():
		if child.has_method("level_check"):
			child.level_check(8)
	
func _hacked_message():
	$Show_text.text = "Manager: We received from our team that someone has changed records in our system. It is coming from your credentials. It is good that we have backups. Next time, pay close attention to what you do.\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()

func _correct_report():
	$Show_text.text = "We checked your report, great job.\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	records_counter = records_counter + 1
	if records_counter == 7:
		$GameFinnish.show()
	
func _wrong_report():
	$Show_text.text = "We checked your report, and this email is all right. Please be more cautious next time\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()
	
func _answer_send():
	$Show_text.text = "Answer send\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _companydata_send():
	$GameStart/Wallpaper/WorkChat.hide()
	$Show_text.text = "Manager: We received from our team about a DDOS attack using the credentails of our workers.  Next time, pay close attention to what you do.\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()
	
func _input(event):
	if event.as_text() == "Enter":
		pressedEnter.emit()


func _on_close_pressed_Email():
	$GameStart/Wallpaper/Email.hide()


func _on_close_pressed_Vpn():
	$GameStart/Wallpaper/Vpn.hide()


func _on_close_pressed_WorkChat():
	$GameStart/Wallpaper/WorkChat.hide()


func _on_close_pressed_RecordApp():
	$GameStart/Wallpaper/RecordApp.hide()

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
	$Miastakes.text=mistakes
	if mistakes == 5:
		$GameOver.show()


func _on_exit_pressed():
	if mistakes == 5:
		level = 8
	else:
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
	
func _record_chnage():
	records_counter = records_counter + 1
	print(records_counter)
	$GameStart/Wallpaper/RecordApp.hide()
	$Show_text.text = "Record changed, good job\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	if records_counter == 7:
		$GameFinnish.show()

func _false_change():
	$Show_text.text = "We received notice that the information in the record was incorrectly placed. Please be better next time\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	read_mistakes()
	
func _on_book_button_pressed():
	$GameStart/Wallpaper/Book.show()
	
func _close_book():
	$GameStart/Wallpaper/Book.hide()

func _worked_number():
	$Show_text.text = "You have already worked with this cargo, or you do not have access to it. \n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
