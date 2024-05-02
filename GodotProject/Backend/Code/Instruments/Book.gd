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


func _on_close_vpn_pressed():
	$Tablet/TextureRect/VPN_note.hide()


func _on_close_report_pressed():
	$Tablet/TextureRect/Report_note.hide()


func _on_reports_pressed():
	$Tablet/TextureRect/Report_note.show()


func _on_emails_pressed():
	$Tablet/TextureRect/Email_note.show()


func _on_close_email_pressed():
	$Tablet/TextureRect/Email_note.hide()


func _on_close_links_pressed():
	$Tablet/TextureRect/Links_note.hide()

func _on_links_pressed():
	$Tablet/TextureRect/Links_note.show()


func _on_close_book_pressed():
	$Tablet/TextureRect/Links_note.hide()
	$Tablet/TextureRect/Email_note.hide()
	$Tablet/TextureRect/Report_note.hide()
	$Tablet/TextureRect/VPN_note.hide()
	CloseBook.emit()
