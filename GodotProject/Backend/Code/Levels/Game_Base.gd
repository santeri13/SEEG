extends Control
signal pressedEnter

var save_path = "user://data.save"
var passclose = false

var languages:Array[String] = ["en","ru","et"]

var level = 0
var money = 10000
var mistakes = 0
var VPN = false
var Wrong_path = false
var Malisiouse_prize = false
var Maliciouse_link = false
var Data_protection = false
var Maiciouse_email = false
var Maiciouse_email2 = false
var language = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	load_data()
	change_language(languages[language])
	var emails = []
	emails.append("boss@utcorp.com,Welcoming letter,Welcome into the position of second-level support. Our team welcomes you.,OK,''")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$GameStart/Wallpaper/Button.disabled = true
	$GameStart/Wallpaper/Button2.disabled = true
	$GameStart/Wallpaper/Button3.disabled = true
	$GameStart/Wallpaper/Button4.disabled = true
	$Show_text.text = tr("Hello, and welcome to your first day at your job. My name is Morty. I will teach you how to work with the tools that you will use on your job \n Press enter")
	await pressedEnter
	await pressedEnter
	$"Email-Arrow".show()
	$GameStart/Wallpaper/Button2.disabled = false
	$Show_text.text = tr("Let's start with the mailbox where you can see the emails that you receive at work\n Open mail")
	$GameStart/Wallpaper/Vpn.connect("CloseVPN",_on_close_pressed_VPN)
	$GameStart/Wallpaper/Email.connect("CloseEmail",_on_button_pressed_email)
	$GameStart/Wallpaper/RecordApp.connect("CloseRecordApp",_on_close_pressed_RecordApp)
	$GameStart/Wallpaper/WorkChat.connect("CloseWorkChat",_on_close_pressed_Workchat)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_4_pressed():
	$GameStart/Wallpaper/Vpn.show()
	$"VPN-Arrow".hide()
	$Show_text.text = tr("This is a VPN application that connects you to our organization's network. You would rarely need to use it, but sometimes it happens\n Close VPN app")


func _on_button_3_pressed():
	$GameStart/Wallpaper/WorkChat.show()
	$"Chat-Arrow".hide()
	$Show_text.text = tr("Here, you can access tools that company workers access by browser. You can access only company-provided websites. You can check information about them later in Book of Knowlege\n Close browser")


func _on_button_2_pressed():
	if $GameStart/Wallpaper/Email.has_method("_load_file"):
		$GameStart/Wallpaper/Email._load_file('res://Backend/Text Files/Email/inbox.txt')
	$GameStart/Wallpaper/Email.show()
	$"Email-Arrow".hide()
	$Show_text.text = tr("Here you can see emails which are written to you and write answers or report them if you find something suspiscious.\n Close mail")


func _on_button_pressed():
	$GameStart/Wallpaper/RecordApp.show()
	$"Internet-Arrow".hide()
	$Show_text.text = tr("As you can see here, you need the cargo tracking code to make changes in the system. \n Press enter to next")
	await pressedEnter
	await pressedEnter
	$Show_text.text = tr("Tracking numbers come in your email as work tasks from support_admin@utcorp.com. Now I will give you one as practice. Put there (PL289087) \n Enter code in app")
	$GameStart/Wallpaper/RecordApp.connect("openRecord",_show_message)

func _on_button_pressed_email():
	$GameStart/Wallpaper/Email.hide()
	$"Internet-Arrow".show()
	$GameStart/Wallpaper/Button2.disabled = true
	$GameStart/Wallpaper/Button.disabled = false
	$Show_text.text = tr("Now open your primary tool\n Open record app")


func _on_close_pressed_VPN():
	$GameStart/Wallpaper/Button4.disabled = true
	$GameStart/Wallpaper/Vpn.hide()
	$Show_text.text = tr("Also, there are some things which could help you in your work\n Press enter")
	await pressedEnter
	await pressedEnter
	$"Tasks-Arrow".show()
	$Show_text.text = tr("Here, you can see a sticky note with tasks you must do each day. Remember that first, you need to check your email, and then they appear in a sticky note\n Press enter")
	await pressedEnter
	await pressedEnter
	$"Tasks-Arrow".hide()
	$"Mistakes-Arrow".show()
	$Show_text.text = tr("Here, you can see how many mistakes you have made. As in real work, you can make only a few mistakes. Here, you are allowed to make 5 mistakes, and then you need to replay the day again\n Press enter")
	await pressedEnter
	await pressedEnter
	$"Mistakes-Arrow".hide()
	$Show_text.text = tr("That all remember to read the manual for personal and work hard\n Press enter for next day")
	await pressedEnter
	await pressedEnter
	$Panel.show()


func _on_close_pressed_Workchat():
	$GameStart/Wallpaper/WorkChat.hide()
	$"VPN-Arrow".show()
	$GameStart/Wallpaper/Button3.disabled = true
	$GameStart/Wallpaper/Button4.disabled = false
	$Show_text.text = tr("The last one is not related much to your work, but it is important that you know about it \n Open VPN app")


func _on_close_pressed_RecordApp():
	if passclose == true:
		$GameStart/Wallpaper/Button.disabled = true
		$GameStart/Wallpaper/Button3.disabled = false
		$GameStart/Wallpaper/RecordApp.hide()
		$"Chat-Arrow".show()
		$Show_text.text = tr("Now that you know how you would communicate in your work, let's see browser\n Open browser")
	
func _input(event):
	if event.as_text() == "Enter":
		pressedEnter.emit()


func _on_next_day_pressed():
	level = 1
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
	get_tree().change_scene_to_file("res://Frontend/Scenes/Levels/Level1.tscn")

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

func _show_message():
	$Show_text.text = tr("Great job. Now you see information about this cargo, which you sometimes need to change to meet client needs. Now close app \n Close application")
	passclose = true
	
func change_language(lang:String) -> void:
	TranslationServer.set_locale(lang)
