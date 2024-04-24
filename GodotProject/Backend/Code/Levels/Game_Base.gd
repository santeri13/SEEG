extends Node2D
signal pressedEnter

var save_path = "user://data.save"



# Called when the node enters the scene tree for the first time.
func _ready():
	var emails = []
	emails.append("boss@utcorp.com,Welcoming letter,Welcom into position second level support. Our team welcom you and wiat when we all start to work together.,OK,''")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$Show_text.text = "Hello, welcome first day on your job. My name is Morty I will texh you how to work with tools which you will use on your job\n Press enter to next"
	await pressedEnter
	await pressedEnter
	$"Email-Arrow".show()
	$Show_text.text = "Lets start with mailbox where you can see mails which you recive on work\n Open mail"
	$GameStart/Vpn.connect("CloseVPN",_on_close_pressed_VPN)
	$GameStart/Email.connect("CloseEmail",_on_button_pressed_email)
	$GameStart/RecordApp.connect("CloseRecordApp",_on_close_pressed_RecordApp)
	$GameStart/WorkChat.connect("CloseWorkChat",_on_close_pressed_Workchat)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_4_pressed():
	$GameStart/Vpn.show()
	$"VPN-Arrow".hide()
	$Show_text.text = "This is VPN application which connctyou with our organization network. It is xtremely rare that you would need tou use it but sometimes happens\n Close VPM app"


func _on_button_3_pressed():
	$GameStart/WorkChat.show()
	$"Chat-Arrow".hide()
	$Show_text.text = "Here you can recive messages from your colleges and answer on them\n Close work chat"


func _on_button_2_pressed():
	if $GameStart/Email.has_method("_load_file"):
		$GameStart/Email._load_file('res://Backend/Text Files/Email/inbox.txt')
	$GameStart/Email.show()
	$"Email-Arrow".hide()
	$Show_text.text = "Here you can answers on mail, delete or report it if you find something suspiscious\n Close mail"


func _on_button_pressed():
	$GameStart/RecordApp.show()
	$"Internet-Arrow".hide()
	$Show_text.text = "As you can see here you need tracking code of product to do changes in there. \n Press enter to next"
	await pressedEnter
	await pressedEnter
	$Show_text.text = "Tracking numbers come on your email or in work chat. Now I will give you one as practice. Put there (PL289087) \n Enter code in app"
	$GameStart/RecordApp.connect("openRecord",_show_message)

func _on_button_pressed_email():
	$GameStart/Email.hide()
	$"Internet-Arrow".show()
	$Show_text.text = "Next lets open your main tool in work\n Open internet browser"


func _on_close_pressed_VPN():
	$GameStart/Vpn.hide()
	$Show_text.text = "Also, there is some things which could help you in your work\n Press enter"
	await pressedEnter
	await pressedEnter
	$"Tasks-Arrow".show()
	$Show_text.text = "Here you could see sticki note with tasks which you need to do by day. Remember that first you need to check email and then \n Press enter"
	await pressedEnter
	await pressedEnter
	$"Tasks-Arrow".hide()
	$"Money-Arrow".show()
	$Show_text.text = "Here you could se your money,do not lose it \n Press enter"
	await pressedEnter
	await pressedEnter
	$"Money-Arrow".hide()
	$Show_text.text = "Thats all remmber to read manual for personal and work hard \n Press enter for next day"
	await pressedEnter
	await pressedEnter
	$Panel.show()


func _on_close_pressed_Workchat():
	$GameStart/WorkChat.hide()
	$"VPN-Arrow".show()
	$Show_text.text = "Last one could be intrestng to you, becaus you could you use it before\n Open VPN app"


func _on_close_pressed_RecordApp():
	$GameStart/RecordApp.hide()
	$"Chat-Arrow".show()
	$Show_text.text = "Now when you know how you would work lets talk about another way of comunication, work chat\n Open work chat"
	
func _input(event):
	if event.as_text() == "Enter":
		pressedEnter.emit()


func _on_next_day_pressed():
	var level = 1
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
	get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level1.tscn")

func _show_message():
	$Show_text.text = "Grate job. Now you see inromation about this package which sometimes you need to chnage by client needs. Now close app \n Close application"
