extends Node

var list_of_emails = []
# Called when the node enters the scene tree for the first time.
func _ready():
	var file = 'res://Backend/Text Files/Email/inbox.txt'
	load_file(file)

func load_file(file):
	
	var f = FileAccess.open(file, FileAccess.READ)
	var emails = f.get_as_text().split("\n")
	emails.remove_at(emails.size()-1)
	for email in emails:
		var text = email.split(",")
		var object: Email = Email.new(text[0],text[1],text[2],text[3])
		list_of_emails.append(object)
		var email_button = Button.new()
		email_button.text = text[0]
		email_button.pressed.connect(func show_email():
			$Panel/Email_text/Email.text = text[0]
			$Panel/Email_text/Name.text = text[1]
			$Panel/Email_text/Text.text = text[2])
		$Panel/Email_list/VBoxContainer.add_child(email_button)
