extends Control

signal hacked
signal CloseVPN


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_send_pressed():
	if $Panel/VPNAadress.text == "101.0.0.0/24" || $Panel/VPNAadress.text == "110.0.0.1/24":
		hacked.emit()


func _on_close_pressed():
	CloseVPN.emit()
