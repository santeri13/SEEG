extends Control

signal CloseBook

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_vpn_pressed():
	$Tablet/TextureRect/VPN_note.show()
	$Tablet/TextureRect/VPN_note/VPN_note_name.text=tr("VPN")
	$Tablet/TextureRect/VPN_note/VPN_note_text.text=tr("VPN is used to receive access to our company's network. As second-level support, you are forbidden to change any settings in the VPN connection. If required, we will send you a private email message where we will write about the day and time when you need to provide your device to the service center.")


func _on_close_vpn_pressed():
	$Tablet/TextureRect/VPN_note.hide()


func _on_close_report_pressed():
	$Tablet/TextureRect/Report_note.hide()


func _on_reports_pressed():
	$Tablet/TextureRect/Report_note.show()
	$Tablet/TextureRect/Report_note/Report_note_name.text=tr("Reports")
	$Tablet/TextureRect/Report_note/Report_note_text.text=tr("Each company worker must be cautious in their actions, which could harm the company. If you find something suspicious, send a report about it, but please double-check if you are sure that something you found is dangerous.")

func _on_emails_pressed():
	$Tablet/TextureRect/Email_note.show()
	$Tablet/TextureRect/Email_note/Email_note_name.text=tr("Email")
	$Tablet/TextureRect/Email_note/Email_note_text.text=tr("Each worker has a private email address with the domain utcorp.com. Also, we write in a traditional style, so no big letters or special characters are in messages. This is also for security purposes.")


func _on_close_email_pressed():
	$Tablet/TextureRect/Email_note.hide()


func _on_close_links_pressed():
	$Tablet/TextureRect/Links_note.hide()

func _on_links_pressed():
	$Tablet/TextureRect/Links_note.show()
	$Tablet/TextureRect/Links_note/Links_note_name.text=tr("Links")
	$Tablet/TextureRect/Links_note/Links_note_text.text=tr("For security measures, the browser on your workstations is programmed so that you can only access company products on them. For now, we are working on three products to which you will receive access in the future:\n
	support.utcorp.com\n
	it.utcorp.com\n
	source.utcorp.com\n
	All the information will be given here if there are new products.")

func _on_close_book_pressed():
	$Tablet/TextureRect/Links_note.hide()
	$Tablet/TextureRect/Email_note.hide()
	$Tablet/TextureRect/Report_note.hide()
	$Tablet/TextureRect/VPN_note.hide()
	CloseBook.emit()
