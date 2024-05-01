extends Control

var save_path = "user://data.save"

var level = 0
var mistakes = 0
var money = 10000
var Wrong_path = false
var VPN = false
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
		mistakes = file.get_var(mistakes)
		money = file.get_var(money)
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
	$Explanation/Explanation.text ="Phishing is an attack in which an attacker writes a message to a target by email, chat, or other text communication tool and tries to receive something interesting. The attacker's target could be personal information, bank account information, or installing on target workstation malware, which collects user data. In this example, the user received a message from another worker who needed information about a record that he worked on ealier but could not receive access to it because his account was locked."
	$Explanation/Mitigation.text = "Here are instructions on what to do to not find yourself in such a situation:
1. If his account was locked, then it was done on purpose.

2. If he has a problem with the account, he must go to support and receive help there.

3. You cannot give information about the shipment to other unrelated people. This could cause reputational damage to the company."


func _on_buttonclose_pressed():
	if $Explanation/Name.text == "Email Phishing":
		$"Explanation/Schwab-email".hide()
	$Explanation.hide()


func _on_vpn_pressed():
	$Explanation.show()
	$Explanation/Name.text = "VPN phishing"
	$Explanation/Explanation.text = "Type of social engineering attack when attacker gives target address by which he accesses to the private network. When the target is connected, the attacker could see data traffic from a user. This could cause loss of your private data, such as passwords from accounts, private photo or video leaks, and other sensitive information."
	$Explanation/Mitigation.text = "Here are instructions on what to do to not find yourself in such a situation:
		
1. Do not connect to a network in which security is under question

2. If you still want to check the given VPN address, do not log in with credentials from primary accounts, and do not go to websites with an unsecured connection."

func _on_wrong_path_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Pharming with known webpage"
	$Explanation/Explanation.text = "Pharming is an attack in which the attacker creates a copy of the original website or profile and uses it to collect data from the target, impersonating itself as legitimate. In this example, we have an original link of the company where the content was changed so that hacker collect information from users."
	$Explanation/Mitigation.text = "Here are instructions on what to do to not find yourself in such a situation:
		
1. Check the content on a webpage. A legitimate company with a good reputation creates a website with good design.

2. Google information on this domain. It could be possible that you could find information about a recent hack of company service

3. Companies do not collect any personal data if it is not related to work or future contacts with a perosn which they are interested"




func _on_malisiouse_prize_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Pharming with prize"
	$Explanation/Explanation.text = "Pharming is an attack in which the attacker creates a copy of the original website or profile and uses it to collect data from the target, impersonating itself as legitimate. In this example, the attacker creates a website with a form. Then he sends a targeted email that target wins a prize and to receive it, he needs to provide personal information."
	$Explanation/Mitigation.text = "Here are instructions on what to do to not find yourself in such a situation:
		
1. Google about such contests. If you were selected to receive a prize in a contest about which you do not know, then it is already suspicious.

2. the attacker could have written, 'To receive a prize on your bank account, you need to write in from your bank account or card data'. Do not provide any information related to your bank accounts. By such manipulation, attacker could receive information about your bank card number and CVV code, by which the attacker could obtain access to your money.

3. If you need to receive a prize, write back that you received it only privately. You go to the company office which does the lottery and receive the prize there"


func _on_maliciouse_link_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Pharming with malisious link"
	$Explanation/Explanation.text = "Pharming is an attack in which the attacker creates a copy of the original website or profile and uses it to collect data from the target, impersonating itself as legitimate. In this example, users receive a link to the website, which imitates the original company website. Users who would see the original design of the company website do not think about changed links to it and could provide their data to attacker."
	$Explanation/Mitigation.text = "Here are instructions on what to do to not find yourself in such a situation:
		
1. Check the webpage on Google or other search websites. Check it if you have a slight idea that the page needs to be more legit.

2. Small details are important. Hackers cannot 100% copy the owner's website. If you find something strange in some tiny detail, check if it is an original website.

3. Companies do not collect personal data if it is unrelated to work or future contacts with the person they are interested in."


func _on_data_protection_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Phishig of personal data"
	$Explanation/Explanation.text = "Phishing is an attack in which an attacker writes a message to a target by email, chat, or other text communication tool and tries to receive something interesting. The attacker's target could be personal information, bank account information, or installing on target workstation malware, which collects user data. In this example, the attacker sends a message to collect information about company workers."
	$Explanation/Mitigation.text = "Here are instructions on what to do to not find yourself in such a situation:
		
1. Check the email from where it was written.

2. If the official message is related to you, it would start as 'Dear Name' or something like that.

3. The company already has all the needed information on you. If they require additional information, then they ask you personally

4. Do not forget to check the email address from where it is written"



func _on_maiciouse_email_2_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Email Phishing"
	$Explanation/Explanation.text ="Phishing is an attack in which an attacker writes a message to a target by email, chat, or other text communication tool and tries to receive something interesting. The attacker's target could be personal information, bank account information, or installing on target workstation malware, which collects user data. In this example, the user receives the message that he requires the same thing as the previous one, but it is different by providing text of a different format, which is not expected from a company worker."
	$Explanation/Mitigation.text = "Here are instructions on what to do to not find yourself in such a situation:
1. If his account was locked, then it was done on purpose.

2. If he has a problem with the account, he must go to support and receive help there.

3. You cannot give information about the shipment to other unrelated people. This could cause reputational damage to the company.

4. Check the template if there is something strange. As a practice, company email is written in one style, and if there are two styles or something that is not common practice in company email messages, then it could be a trigger for the action."


func _on_backbutton_pressed():
	get_tree().change_scene_to_file("res://Frontend/Scenes/Menus/menu.tscn")
