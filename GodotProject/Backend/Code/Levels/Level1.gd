extends Node2D

signal pressedEnter


# Called when the node enters the scene tree for the first time.
func _ready():
	var f = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ)
	var emails = f.get_as_text().split("\n")
	f.close()
	emails.remove_at(emails.size()-1)
	emails.append("support_admin@utcorp.com,Today tasks,Today tasks would be changing on tracking code TR25896 from Estonia to Helsinki and arrival time to 11.12.2023. Also chnage on BS25896 departure to 17.01.2024, OK")
	emails.append("tech_guy@utcorpi.com,VPN access chnage,Can you change your VPN path to this 101.0.0.0/24,malisiouse")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ_WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$GameStart/Vpn.connect("hacked",_hacked_message)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_4_pressed():
	$GameStart/Vpn.show()


func _on_button_3_pressed():
	$GameStart/WorkChat.show()


func _on_button_2_pressed():
	print(get_children())
	if $GameStart/Email.has_method("_load_file"):
		$GameStart/Email._load_file()
	$GameStart/Email.show()
	$GameStart/List_of_tasks/Text_List_of_task.text = "Tasks:\n Change infromation on number TR25896: \n \t Estonia to Helsinki \n \t arrival time to 11.12.2023 \t BS25896: \n \t departure to 17.01.2024"


func _on_button_pressed():
	$GameStart/RecordApp.show()


func _on_close_pressed_Email():
	$GameStart/Email.hide()


func _on_close_pressed_VPN():
	$GameStart/Vpn.hide()


func _on_close_pressed_WorkChat():
	$GameStart/WorkChat.hide()


func _on_close_pressed_RecordApp():
	$GameStart/RecordApp.hide()#
	
func _hacked_message():
	$Show_text.text = "Manager: we recive from our team that someone is chnanged records in our system. IT is comming from your credentials.
	It is good that we have backups, next time pay close attention what you do.\n Press eneter to close"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _input(event):
	print(event.as_text())
	if event.as_text() == "Enter":
		pressedEnter.emit()
