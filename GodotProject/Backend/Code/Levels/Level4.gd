extends Node2D

signal pressedEnter
# Called when the node enters the scene tree for the first time.
func _ready():
	var f = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ)
	var emails = f.get_as_text().split("\n")
	f.close()
	emails.remove_at(emails.size()-1)
	emails.append("support_admin@utcorp.com,Today tasks,Today tasks would be changing on tracking code TR25896 from Estonia to Helsinki and arrival time to 11.12.2023. Also chnage on BS25896 departure to 17.01.2024,OK,''")
	emails.append("suto.kazuki@utcorp.com,Infromation about product,Can you send me infromation about your trakning numbers for today. I worked with one of them yesterday and it could be that I chnaged something incorectly there,malisiouse,This is my credentials")
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ_WRITE)
	for email in emails:
		file.store_line(email)
	file.close()
	$GameStart/Vpn.connect("hacked",_hacked_message)
	$GameStart/Email.connect("RightReport",_correct_report)
	$GameStart/Email.connect("WrongReport",_wrong_report)
	$GameStart/Email.connect("AnswerSend",_answer_send)


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

func _correct_report():
	$Show_text.text = "We checked your report, great job"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _wrong_report():
	$Show_text.text = "We checked your report, with this email is all right, please be more cautios next time"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
func _answer_send():
	$Show_text.text = "Answer send"
	$Show_text.show()
	await pressedEnter
	await pressedEnter
	$Show_text.hide()
	
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
