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
	$Explanation/Explanation.text ="Phishing is attack in which attacker write message to target by email, chat or other tool of text comunication and try to recive from it something interesting to attacker. Target of attcker could br personal information, bank account information or intalling on target workstation malware which collect user data. In this example user recive message from another worker who need information about record which he work ealier but cannot recive access for it becasue his acount was locked"
	$Explanation/Mitigation.text = "Here is instruction on what to do to not find yourself in such situaion:
1. If his account was locked then it was done on purpose.

2. If he have problem with account then he need to go to support and recive help there.

3. You cannot give infromation about shippment to other person who are not related with it. This could cause reputaional damage to company"


func _on_buttonclose_pressed():
	if $Explanation/Name.text == "Email Phishing":
		$"Explanation/Schwab-email".hide()
	$Explanation.hide()


func _on_vpn_pressed():
	$Explanation.show()
	$Explanation/Name.text = "VPN phishing"
	$Explanation/Explanation.text = "Type of social engenering attack when attacker give target address by which he access to private networ. When target is connected he could see trafic from user. This could casue loss of your private data as passwords from accounts, private photo or video leaks and other sensitive infromation."
	$Explanation/Mitigation.text = "Here is instruction on what to do to not find yourself in such situaion:
		
1. Do not connect to network in which security is under question

2. If you still like to check if given VPN address then do not login with credentials from primary accounts and do not go to websites which could give bad impression about you"

func _on_wrong_path_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Pharming with known webpage"
	$Explanation/Explanation.text = "Phishing is attack in which attacker create copy of original website or profile and use it to collect data from target impersonating itself as legitimate. In this example we have original link of the company where content was chnaged that hacker collect information from users."
	$Explanation/Mitigation.text = "Here is instruction on what to do to not find yourself in such situaion:
		
1. Check contanet on webpage. Legitimate company with reputaion cretae website with good design.

2. Google infromation on this domain and related with it. It could be possible that you could find information about recent hack of company service

3. Companies do not collect any personal data if it is not related with work or future contacts with perosn which they are interested"




func _on_malisiouse_prize_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Pharming with prize"
	$Explanation/Explanation.text = "Phsihng is attack in which attacker create copy of original website or profile and use it to collect data from target impersonating itself as legitimate. In this example attacker cretae website with form. Then he send to target email about that he win a prize and to recive it he need to provide personal infromation."
	$Explanation/Mitigation.text = "Here is instruction on what to do to not find yourself in such situaion:
		
1. Google about such contest. If you was selected ro recive prize in contest about which you do not know then it is already suspiciouse.

2. It could be that attacker could write that for reciveing prize on your bank account you need to write it in form. Do not provide any information which is related to your bank accounts. By such kind of maniplation they could recive infromation about you bank card and CVV code by which they could recive access to your money.

3. If you need to recive a prize then write back that you recive it only in private maner. You go to company office which do lottery and recive proze there"


func _on_maliciouse_link_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Pharming with malisious link"
	$Explanation/Explanation.text = "Pharming is attack in which attacker create copy of original website or profile and use it to collect data from target impersonating itself as legitimate. In this example user recive a link to website link which imitates the orginal company website. User which would see original design of company website do not think about chnaged link to it and could provie his data to attacker"
	$Explanation/Mitigation.text = "Here is instruction on what to do to not find yourself in such situaion:
		
1. Check webpage in google or other serach websites. If you have small idea about that page is not legit then check it.

2. Small details is important. Hackers cannot on 100% copy webite of owner. If you find something strange in some tiny detail then try to check if it is originla website.

3. Companies do not collect any personal data if it is not related with work or future contacts with perosn which they are interested."


func _on_data_protection_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Phishig of personal data"
	$Explanation/Explanation.text = "Phishing is attack in which attacker write message to target by email, chat or other tool of text comunication and try to recive from it something interesting to attacker. Target of attcker could br personal information, bank account information or intalling on target workstation malware which collect user data. In this example attacker send message to collect infromation about company workers"
	$Explanation/Mitigation.text = "Here is instruction on what to do to not find yourself in such situaion:
		
1. Check email from where it is written.

2. If official messgae is related with you then it would start as example 'Dear Name' or something like that.

3. Company already have all needed infromation on you. If they requeire additional infromation then they ask you personaly

4. Do not forget to check email address from where it is written"



func _on_maiciouse_email_2_pressed():
	$Explanation.show()
	$Explanation/Name.text = "Email Phishing"
	$Explanation/Explanation.text ="Phishing is attack in which attacker write message to target by email, chat or other tool of text comunication and try to recive from it something interesting to attacker. Target of attcker could br personal information, bank account information or intalling on target workstation malware which collect user data. In this example user recive message that he require same thing as previosue one but it is differnt in one little detail."
	$Explanation/Mitigation.text = "Here is instruction on what to do to not find yourself in such situaion:
1. If his account was locked then it was done on purpose.

2. If he have problem with account then he need to go to support and recive help there.

3. You cannot give infromation about shippment to other person who are not related with it. This could cause reputaional damage to company

4. Check temaplate if there is something strange. As practice company email is written in one style and if there is used two styles or something which is not common practice in company email messages then it could be a trigger for action"
