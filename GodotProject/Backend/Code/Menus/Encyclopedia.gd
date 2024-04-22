extends Control

var save_path = "user://data.save"

var level = 0
var VPN = false
var Wrong_path = false
var Malisiouse_prize = false
var Maliciouse_link = false
var Data_protection = false
var Maiciouse_email = false
var Maiciouse_email2 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	load_data()
	if VPN == true:
		$VBoxContainer/WiPhishihngContainer/VPN.disable = false
		$VBoxContainer/WiPhishihngContainer/VPN/LockExample1.hide()
	if Wrong_path == true:
		$VBoxContainer/WiPhishihngContainer/Wrong_path.disable = false
		$VBoxContainer/WiPhishihngContainer/Wrong_path/LockExample1.hide()
	if Malisiouse_prize == true:
		$VBoxContainer/WiPhishihngContainer/Malisiouse_prize.disable = false
		$VBoxContainer/WiPhishihngContainer/Malisiouse_prize/LockExample1.hide()
	if Maliciouse_link == true:
		$VBoxContainer/WiPhishihngContainer/Maliciouse_link.disable = false
		$VBoxContainer/WiPhishihngContainer/Maliciouse_link/LockExample1.hide()
	if Data_protection == true:
		$VBoxContainer/WiPhishihngContainer/Data_protection.disable = false
		$VBoxContainer/WiPhishihngContainer/Data_protection/LockExample1.hide()
	if Maiciouse_email == true:
		$VBoxContainer/WiPhishihngContainer/Maiciouse_email.disable = false
		$VBoxContainer/WiPhishihngContainer/Maiciouse_email/LockExample1.hide()
	if Maiciouse_email2 == true:
		$VBoxContainer/WiPhishihngContainer/Maiciouse_email2.disable = false
		$VBoxContainer/WiPhishihngContainer/Maiciouse_email2/LockExample1.hide()
	
func _on_phishing_pressed():
	if $VBoxContainer/PhishihgContainer.visible == false:
		$VBoxContainer/PhishihgContainer.visible = true
	else:
		$VBoxContainer/PhishihgContainer.visible = false


func _on_wi_phishing_pressed():
	if $VBoxContainer/WiPhishihngContainer.visible == false:
		$VBoxContainer/WiPhishihngContainer.visible = true
	else:
		$VBoxContainer/WiPhishihngContainer.visible = false


func _on_pharming_pressed():
	if $VBoxContainer/PharmingContainer.visible == false:
		$VBoxContainer/PharmingContainer.visible = true
	else:
		$VBoxContainer/PharmingContainer.visible = false

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path,FileAccess.READ)
		level = file.get_var(level)
		VPN = file.get_var(VPN)
		Wrong_path = file.get_var(Wrong_path)
		Malisiouse_prize = file.get_var(Malisiouse_prize)
		Maliciouse_link = file.get_var(Maliciouse_link)
		Data_protection = file.get_var(Data_protection)
		Maiciouse_email = file.get_var(Maiciouse_email)
		Maiciouse_email2 = file.get_var(Maiciouse_email2)
		


func _on_maiciouse_email_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Email Phishing"
	$Explanation/Explanation.text ="Phishing is a type of online scam where criminals impersonate legitimate organizations via email, text message, advertisement or other means in order to steal sensitive information. This is usually done by including a link that will appear to take you to the company’s website to fill in your information – but the website is a clever fake and the information you provide goes straight to the crooks behind the scam."
	$Explanation/Mitigation.text = "1. The email is not addressed to the recipient. If the recipient was truly being notified by Charles Schwab that there was an issue with their account, they would know the recipient’s name.

2. Again, they don’t know the recipient’s name;'Dear Customer' isn’t an identifier.

3. The recipient hasn’t attempted to sign into a Schwab account, so could not have exceeded the number of attempts allowed.

4. Grammatical errors: The words Online Banking are capitalized throughout the text. And, if you read carefully, the text says 'Please visit www.schwab.com/activate Reset Account your account' which clearly doesn’t make sense, but since most people scan emails quickly, grammatical errors that are this small usually don’t get noticed.

5. They try to reassure recipients by encouraging them to confirm the email is from Schwab….. by using a link they provide.

6. Look at the sixth flag; this shows the true email address displayed when you hover your mouse over any link on this page (which is a red flag in itself, what company would have all of these actions point to the same link?). See that the website is actually http://almall.us? The scammer added the words /schwab.com/ after their website’s true name in an attempt to look legitimate, but this site is anything but legitimate."
	$"Explanation/Schwab-email".show()


func _on_buttonclose_pressed():
	if $Explanation/Name.text == "Email Phishing":
		$"Explanation/Schwab-email".hide()
	$Explanation.hide()
