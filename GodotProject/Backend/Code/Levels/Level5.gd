extends Control

signal pressedEnter

var languages:Array[String] = ["en","ru","et"]

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

var records_counter = 0

func _ready():
	load_data()
	change_language(languages[language])
	
	##var f = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ)
	##var emails = f.get_as_text().split("\n")
	##f.close()
	##emails.remove_at(emails.size()-1)
	$GameStart/Wallpaper/List_of_tasks/Text_List_of_task.text="Task:\nOpen Email"
	var emails = []
	emails.append("support_admin@utcorp.com,Today tasks,Adjustment required for NE9167: Change the arrival country to France. Also update needed for OI5832: Change the company name to Hellenic Logistics Solutions.,OK,''")
	emails.append("admin@ytcorp.com,Cyber check,Yesterday there was a cyberattack that changed the links to our resources. Our team is working on fixing this issue and they say they have nearly fixed it. For additional check every worker must go to the link www.official.utcorp.com to check if all work is correct.,malisiouse,''")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ_WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$GameStart/Wallpaper/Vpn.connect("hacked",_hacked_message)
	$GameStart/Wallpaper/Email.connect("RightReport",_correct_report)
	$GameStart/Wallpaper/Email.connect("WrongReport",_wrong_report)
	$GameStart/Wallpaper/Email.connect("AnswerSend",_answer_send)
	$GameStart/Wallpaper/WorkChat.connect("CredentalSend",_credential_send)
	$GameStart/Wallpaper/RecordApp.connect("RecordChange",_record_chnage)
	$GameStart/Wallpaper/RecordApp.connect("FalseChange",_false_change)
	$GameStart/Wallpaper/Vpn.connect("CloseVPN",_on_close_pressed_Vpn)
	$GameStart/Wallpaper/Email.connect("CloseEmail",_on_close_pressed_Email)
	$GameStart/Wallpaper/RecordApp.connect("CloseRecordApp",_on_close_pressed_RecordApp)
	$GameStart/Wallpaper/WorkChat.connect("CloseWorkChat",_on_close_pressed_WorkChat)
	$GameStart/Wallpaper/Book.connect("CloseBook",_close_book)
	$GameStart/Wallpaper/RecordApp.connect("WorkedWithRecord",_worked_number)
	$GameStart/Wallpaper/RecordApp.connect("WrongComapnyName",_wrong_name)
	$GameStart/Wallpaper/RecordApp.connect("WrongDepartureDate",_wrong_deoarture_date)
	$GameStart/Wallpaper/RecordApp.connect("WrongArrivingDate",_wrong_arriving_date)
	$GameStart/Wallpaper/RecordApp.connect("WrongDepartureTown",_wrong_deoarture_town)
	$GameStart/Wallpaper/RecordApp.connect("WrongArrivingTown",_wrong_arriving_town)


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
	$GameStart/Wallpaper/List_of_tasks/Text_List_of_task.text = tr("Tasks:\nNE9167:\n\tarrival to France\nOI5832:\n\tcompany name to Hellenic Logistics Solutions")


func _on_button_pressed():
	$GameStart/Wallpaper/RecordApp.show()
	for child in $GameStart/Wallpaper.get_children():
		if child.has_method("level_check"):
			child.level_check(5)
	
func _hacked_message():
	read_mistakes()
	$Show_text.text = tr("Manager: We received from our team that someone has changed records in our system. It is coming from your credentials. It is good that we have backups. Next time, pay close attention to what you do.\n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()

func _correct_report():
	Wrong_path = true
	$Show_text.text = tr("We checked your report, great job.\n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	records_counter = records_counter + 1
	if records_counter == 3:
		$Next_day.show()
	
func _wrong_report():
	read_mistakes()
	$Show_text.text = tr("We checked your report, and this email is all right. Please be more cautious next time\n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _answer_send():
	$Show_text.text = tr("Answer send\n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _credential_send():
	$GameStart/Wallpaper/WorkChat.hide()
	read_mistakes()
	$Show_text.text = tr("Manager: We recive from our team accessed our server and dowanloaded from there importnat data. By logs records was chnaged from your credentials.
	It is good that we have backups, next time pay close attention what you do.\n Press eneter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _false_change():
	read_mistakes()
	$Show_text.text = tr("We received notice that the information in the record was incorrectly placed. Please be better next time\n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
	
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
		$Miastakes.text=str(mistakes)
		money = file.get_var(money)
		VPN = file.get_var(VPN)
		Wrong_path = file.get_var(Wrong_path)
		Malisiouse_prize = file.get_var(Wrong_path)
		Maliciouse_link = file.get_var(Maliciouse_link)
		Data_protection = file.get_var(Data_protection)
		Maiciouse_email = file.get_var(Maiciouse_email)
		Maiciouse_email2 = file.get_var(Maiciouse_email2)
		language = file.get_var(language)
		
func read_mistakes():
	mistakes = mistakes+1
	$Miastakes.text=str(mistakes)
	if mistakes == 5:
		$GameOver.show()
	
func _record_chnage():
	records_counter = records_counter + 1
	$GameStart/Wallpaper/RecordApp.hide()
	$Show_text.text = "Record changed, good job\n Press enter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
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
	file.store_var(language)
	get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level6.tscn")


func _on_exit_pressed():
	level = 5
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
	file.store_var(language)
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
	file.store_var(language)
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/menu.tscn")
	
func _on_book_button_pressed():
	$GameStart/Wallpaper/Book.show()

func _close_book():
	$GameStart/Wallpaper/Book.hide()

func _worked_number():
	$Show_text.text = tr("You have already worked with this cargo, or you do not have access to it. \n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()

func _wrong_name():
	$Show_text.text = tr("You have wrong name of the company. Please provide right name\nPress enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _wrong_deoarture_date():
	$Show_text.text = tr("You have wrong departure date. Please provide right departure date\nPress enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()

func _wrong_arriving_date():
	$Show_text.text = tr("You placed wrong arriving date. Please provide arriving date\nPress enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _wrong_deoarture_town():
	$Show_text.text = tr("You placed wrong departure town. Please provide right departure town\n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _wrong_arriving_town():
	$Show_text.text = tr("You placed wrong arriving town. Please provide right departure town\n Press enter to close")
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()

func change_language(lang:String) -> void:
	TranslationServer.set_locale(lang)
