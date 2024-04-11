extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/PhishihgContainer/Example1.set_self_modulate(Color(1,1,1,1))
	$VBoxContainer/PhishihgContainer/Example1.disabled = false
	
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
