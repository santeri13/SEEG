extends Control

signal CredentalSend
signal PrizeSend
signal CompanyWebpage
signal CloseWorkChat
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if $Panel/LinkEdit.text == "www.official.utcorp.com":
		$Panel/Credentials.show()
		$Panel/Prize.hide()
		$Panel/CompanyPhishing.hide()
		$Panel/Credentials/OrderNumber/OrderNumber.text="user@utcorp.com"
		$Panel/Credentials/OrderNumber/OrderNumber2.text="TonyRule"
	elif $Panel/LinkEdit.text == "www.portprize.com":
		$Panel/Prize.show()
		$Panel/Credentials.hide()
		$Panel/CompanyPhishing.hide()
		$Panel/Prize/OrderNumber/OrderNumber.text = "Liza"
		$Panel/Prize/OrderNumber/OrderNumber2.text = "Marienko"
		$Panel/Prize/OrderNumber/OrderNumber3.text = "19.09.1991"
		$Panel/Prize/OrderNumber/OrderNumber4.text = "user@utcorp.com"
		$Panel/Prize/OrderNumber/OrderNumber5.text = "Sir street 48-19"
	elif $Panel/LinkEdit.text == "www.legit.utcorpi.com":
		$Panel/Prize.hide()
		$Panel/Credentials.hide()
		$Panel/CompanyPhishing.show()
		$Panel/CompanyPhishing/OrderNumber/OrderNumber.text = "Liza"
		$Panel/CompanyPhishing/OrderNumber/OrderNumber2.text = "Marienko"
		$Panel/CompanyPhishing/OrderNumber/OrderNumber3.text = "19.09.1991"
		$Panel/CompanyPhishing/OrderNumber/OrderNumber4.text = "user@utcorp.com"
	


func _on_sendcredential_pressed():
	if $Panel/Credentials/OrderNumber/OrderNumber.text == "user@utcorp.com" && $Panel/Credentials/OrderNumber/OrderNumber2.text == "TonyRule":
		$Panel/Credentials/OrderNumber/Coment.text = "Credentails send"
		CredentalSend.emit()
	elif $Panel/Credentials/OrderNumber/OrderNumber.text == "":
		$Panel/Credentials/OrderNumber/Coment.text = "Email field is empty"
	elif $Panel/Credentials/OrderNumber/OrderNumber2.text == "":
		$Panel/Credentials/OrderNumber/Coment.text = "Password field is empty"
	elif $Panel/Credentials/OrderNumber/OrderNumber.text != "user@utcorp.com" || $Panel/Credentials/OrderNumber/OrderNumber2.text != "TonyRule":
		$Panel/Credentials/OrderNumber/Coment.text = "Your credentails not right"
	else:
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Something wrong with credentials"


func _on_sendprize_pressed():
	if $Panel/Prize/OrderNumber/OrderNumber.text == "Liza" && $Panel/Prize/OrderNumber/OrderNumber2.text == "Marienko" && $Panel/Prize/OrderNumber/OrderNumber3.text == "19.09.1991" && $Panel/Prize/OrderNumber/OrderNumber4.text == "user@utcorp.com" && $Panel/Prize/OrderNumber/OrderNumber5.text == "Sir street 48-19":
		$Panel/Prize/OrderNumber/Coment.text = "Data send"
		PrizeSend.emit()
		$Panel/Prize.hide()
	elif $Panel/Prize/OrderNumber/OrderNumber.text == "":
		$Panel/Prize/OrderNumber/Coment.text = "Name is empy"
	elif $Panel/Prize/OrderNumber/OrderNumber2.text == "":
		$Panel/Prize/OrderNumber/Coment.text = "Surname is empty"
	elif $Panel/Prize/OrderNumber/OrderNumber3.text == "":
		$Panel/Prize/OrderNumber/Coment.text = "Birthdate is empty"
	elif $Panel/Prize/OrderNumber/OrderNumber4.text == "":
		$Panel/Prize/OrderNumber/Coment.text = "Email is empty"
	elif $Panel/Prize/OrderNumber/OrderNumber5.text == "":
		$Panel/Prize/OrderNumber/Coment.text = "Address is empty"
	else:
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Something wrong with credentials"


func _on_sendcompanydata_pressed():
	if $Panel/CompanyPhishing/OrderNumber/OrderNumber.text == "Liza" && $Panel/CompanyPhishing/OrderNumber/OrderNumber2.text == "Marienko" && $Panel/CompanyPhishing/OrderNumber/OrderNumber3.text == "19.09.1991" && $Panel/CompanyPhishing/OrderNumber/OrderNumber4.text == "user@utcorp.com":
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Data send"
		CompanyWebpage.emit()
		$Panel/CompanyPhishing.hide()
	elif $Panel/CompanyPhishing/OrderNumber/OrderNumber.text == "":
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Name is empy"
	elif $Panel/CompanyPhishing/OrderNumber/OrderNumber2.text == "":
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Surname is empty"
	elif $Panel/CompanyPhishing/OrderNumber/OrderNumber3.text == "":
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Birthdate is empty"
	elif $Panel/CompanyPhishing/OrderNumber/OrderNumber4.text == "":
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Email is empty"
	else:
		$Panel/CompanyPhishing/OrderNumber/Coment.text = "Something wrong with credentials"


func _on_close_pressed():
	CloseWorkChat.emit()
	$Panel/CompanyPhishing.hide()
	$Panel/Prize.hide()
	$Panel/Credentials.hide()
