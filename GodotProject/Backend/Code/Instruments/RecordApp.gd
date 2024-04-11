extends Control
signal openRecord


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_send_pressed():
	if $Panel/OrderNumber/OrderNumber.text == "PL289087":
		emit_signal("openRecord")
		$Panel/OrderNumber.hide()
		$Panel/OrderData.show()
		$Panel/OrderData/Comapny_Name_Text.text = "DepartureOU"
		$Panel/OrderData/Date_of_Departure_Text.text = "19.11.2023"
		$Panel/OrderData/Date_of_Arriving_Text.text = "19.12.2023"
		$Panel/OrderData/From_Text.text = "Poland"
		$Panel/OrderData/To_Text.text = "Denmark"
