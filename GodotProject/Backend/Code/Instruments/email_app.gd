extends Node

signal RightReport
signal WrongReport
signal AnswerSend
signal MalisiouseAnswerSend
signal CloseEmail

var list_of_emails = []
var list_of_junk = []

func _ready():
	pass

func _load_file(path):
	for n in $Panel/Email_list/VBoxContainer.get_children():
		$Panel/Email_list/VBoxContainer.remove_child(n)
		n.queue_free()
		list_of_emails = []
		list_of_junk = []
	var f = FileAccess.open(path, FileAccess.READ)
	var emails = f.get_as_text().split("\n")
	if emails.size()>0:
		emails.remove_at(emails.size()-1)
	f.close()
	for email in emails:
		var text = email.split(",")
		var object: Email = Email.new(text[1],text[0],text[2],text[3],text[4])
		list_of_emails.append(object)
		var email_button = Button.new()
		email_button.name = text[0]
		email_button.text = text[0]
		email_button.pressed.connect(func show_email():
			$Panel/Email_text/Email.text = text[0]
			$Panel/Email_text/Name.text = text[1]
			if text[0] == "suto.kazuki@utcorp.com":
				$Panel/Email_text/Text.add_theme_font_size_override("font_size", 30)
			else:
				$Panel/Email_text/Text.add_theme_font_size_override("font_size", 17)
			$Panel/Email_text/Text.text = text[2]
			$Panel/Email_text.show()
			if text[4].length() > 2:
				$Panel/Email_text/Answer.show()
			else:
				$Panel/Email_text/Answer.hide())
		$Panel/Email_list/VBoxContainer.add_child(email_button)


func _on_answer_pressed():
	$Panel/Email_text/Answers.show()
	var email = $Panel/Email_text/Email.text
	var name = $Panel/Email_text/Name.text
	for mail in list_of_emails:
		if mail.email == email && mail.name == name && mail.answerson != '':
			$Panel/Email_text/Answers/Answer.text = mail.answerson
			$Panel/Email_text/Answers.show()
		else:
			print("You cannot answer on this email")


func _on_report_pressed():
	var email = $Panel/Email_text/Email.text
	var name = $Panel/Email_text/Name.text
	var i:int = 0
	for mail in list_of_emails:
		if mail.email == email && mail.name == name:
			if mail.malicious == "malisiouse":
				RightReport.emit()
				$Panel/Email_text.hide()
				var file = FileAccess.open("res://Backend/Text Files/Email/junk.txt", FileAccess.READ_WRITE)
				file.store_line(mail.email+","+mail.name+","+mail.text+","+mail.malicious+","+mail.answerson)
				file.close()
				list_of_emails.remove_at(i)
				var file2 = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.WRITE)
				for mail2 in list_of_emails:
					file2.store_line(mail2.email+","+mail2.name+","+mail2.text+","+mail2.malicious+","+mail2.answerson)
				file2.close()
			elif mail.malicious == "OK":
				WrongReport.emit()
		i = i+1
	_load_file('res://Backend/Text Files/Email/inbox.txt')


func _on_inbox_pressed():
	_load_file('res://Backend/Text Files/Email/inbox.txt')


func _on_sended_email_pressed():
	_load_file('res://Backend/Text Files/Email/sended_email.txt')


func _on_deleted_pressed():
	_load_file('res://Backend/Text Files/Email/deleted.txt')


func _on_junk_pressed():
	_load_file('res://Backend/Text Files/Email/junk.txt')


func _on_answer_send():
	var email = $Panel/Email_text/Email.text
	var name = $Panel/Email_text/Name.text
	var i:int = 0
	for mail in list_of_emails:
		if mail.email == email && mail.name == name:
			if mail.malicious == "malisiouse":
				MalisiouseAnswerSend.emit()
				$Panel/Email_text/Answers.hide()
				$Panel/Email_text.hide()
				#var file = FileAccess.open("res://Backend/Text Files/Email/junk.txt", FileAccess.READ_WRITE)
				#file.store_line(mail.email+","+mail.name+","+mail.text+","+mail.malicious+","+mail.answerson)
				#file.close()
				#list_of_emails.remove_at(i)
				#var file2 = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.WRITE)
				#for mail2 in list_of_emails:
					#file2.store_line(mail2.email+","+mail2.name+","+mail2.text+","+mail2.malicious+","+mail2.answerson)
				#file2.close()
			elif mail.malicious == "OK":
				AnswerSend.emit()
				#var file = FileAccess.open("res://Backend/Text Files/Email/sended_email.txt", FileAccess.READ_WRITE)
				#file.store_line(mail.email+","+mail.name+","+mail.text+","+mail.malicious+","+mail.answerson)
				#file.close()
				#list_of_emails.remove_at(i)
				#var file2 = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.WRITE)
				#for mail2 in list_of_emails:
					#file2.store_line(mail2.email+","+mail2.name+","+mail2.text+","+mail2.malicious+","+mail2.answerson)
				#file2.close()
				$Panel/Email_text/Answers.hide()
		i = i+1
	#_load_file('res://Backend/Text Files/Email/inbox.txt')


func _on_close_button_pressed():
	CloseEmail.emit()

