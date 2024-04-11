extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_4_pressed():
	$GameStart/Vpn.show()


func _on_button_3_pressed():
	$GameStart/WorkChat.show()


func _on_button_2_pressed():
	$GameStart/Email.show()


func _on_button_pressed():
	$GameStart/RecordApp.show()
