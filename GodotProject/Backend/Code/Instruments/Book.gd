extends Control

signal CloseBook

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_vpn_pressed():
	$Tablet/VPN_note.show()


func _on_close_vpn_pressed():
	$Tablet/VPN_note.hide()


func _on_close_report_pressed():
	$Tablet/Report_note.hide()


func _on_reports_pressed():
	$Tablet/Report_note.show()


func _on_emails_pressed():
	$Tablet/Email_note.show()


func _on_close_email_pressed():
	$Tablet/Email_note.hide()


func _on_close_links_pressed():
	$Tablet/Links_note.hide()

func _on_links_pressed():
	$Tablet/Links_note.show()


func _on_close_book_pressed():
	CloseBook.emit()
