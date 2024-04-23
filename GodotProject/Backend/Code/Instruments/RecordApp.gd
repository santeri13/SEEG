extends Control

signal openRecord
signal RecordChange
signal FalseChange

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_send_pressed():
	match $Panel/OrderNumber/OrderNumber.text:
		"PL289087":
			openRecord.emit()
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "DepartureOU"
			$Panel/OrderData/Date_of_Departure_Text.text = "19.11.2023"
			$Panel/OrderData/Date_of_Arriving_Text.text = "19.12.2023"
			$Panel/OrderData/From_Text.text = "Poland"
			$Panel/OrderData/To_Text.text = "Estonia"
		"ZP9538":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "EuroTrans Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "21.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "24.04.2024"
			$Panel/OrderData/From_Text.text = "France"
			$Panel/OrderData/To_Text.text = "Spain"
		"GV4210":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Alpine Express"
			$Panel/OrderData/Date_of_Departure_Text.text = "22.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "25.04.2024"
			$Panel/OrderData/From_Text.text = "Switzerland"
			$Panel/OrderData/To_Text.text = "Austria"
		"FK7085":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Baltic Freight Solutions"
			$Panel/OrderData/Date_of_Departure_Text.text = "23.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "26.04.2024"
			$Panel/OrderData/From_Text.text = "Estonia"
			$Panel/OrderData/To_Text.text = "Latvia"
		"RD6021":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Nordic Haulage Ltd."
			$Panel/OrderData/Date_of_Departure_Text.text = "24.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "27.04.2024"
			$Panel/OrderData/From_Text.text = "Sweden"
			$Panel/OrderData/To_Text.text = "Norway"
		"WH3472":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Iberian Cargo Services"
			$Panel/OrderData/Date_of_Departure_Text.text = "25.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "28.04.2024"
			$Panel/OrderData/From_Text.text = "Portugal"
			$Panel/OrderData/To_Text.text = "Spain"
		"QL8496":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Balkan Transport Solutions"
			$Panel/OrderData/Date_of_Departure_Text.text = "26.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "29.04.2024"
			$Panel/OrderData/From_Text.text = "Croatia"
			$Panel/OrderData/To_Text.text = "Slovenia"
		"JP0135":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Benelux Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "27.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "30.04.2024"
			$Panel/OrderData/From_Text.text = "Belgium"
			$Panel/OrderData/To_Text.text = "Netherlands"
		"UV2479":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Danube Shipping Co."
			$Panel/OrderData/Date_of_Departure_Text.text = "28.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "01.05.2024"
			$Panel/OrderData/From_Text.text = "Hungary"
			$Panel/OrderData/To_Text.text = "Romania"	
		"NE9167":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Irish Transport Services"
			$Panel/OrderData/Date_of_Departure_Text.text = "29.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "02.05.2024"
			$Panel/OrderData/From_Text.text = "Ireland"
			$Panel/OrderData/To_Text.text = "United Kingdom"
		"OI5832":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Greek Express Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "30.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "03.05.2024"
			$Panel/OrderData/From_Text.text = "Greece"
			$Panel/OrderData/To_Text.text = "Cyprus"
		"YX4096":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Italian Freight Forwarders"
			$Panel/OrderData/Date_of_Departure_Text.text = "01.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "04.05.2024"
			$Panel/OrderData/From_Text.text = "Italy"
			$Panel/OrderData/To_Text.text = "Vatican City"
		"LD6259":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Central European Transport"
			$Panel/OrderData/Date_of_Departure_Text.text = "02.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "05.05.2024"
			$Panel/OrderData/From_Text.text = "Czech Republic"
			$Panel/OrderData/To_Text.text = "Slovakia"
		"AM7148":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Swiss Alpine Hauliers"
			$Panel/OrderData/Date_of_Departure_Text.text = "03.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "06.05.2024"
			$Panel/OrderData/From_Text.text = "Switzerland"
			$Panel/OrderData/To_Text.text = "Liechtenstein"
		"ZT8032":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Polish Cargo Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "04.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "07.05.2024"
			$Panel/OrderData/From_Text.text = "Poland"
			$Panel/OrderData/To_Text.text = "Belarus"
		"BG1094":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Finnish Freight Carriers"
			$Panel/OrderData/Date_of_Departure_Text.text = "05.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "08.05.2024"
			$Panel/OrderData/From_Text.text = "Finland"
			$Panel/OrderData/To_Text.text = "Sweden"
		"EC2675":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Scandinavian Shipping Solutions"
			$Panel/OrderData/Date_of_Departure_Text.text = "06.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "09.05.2024"
			$Panel/OrderData/From_Text.text = "Denmark"
			$Panel/OrderData/To_Text.text = "Norway"
		"JN5204":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Maltese Transport Services"
			$Panel/OrderData/Date_of_Departure_Text.text = "07.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "10.05.2024"
			$Panel/OrderData/From_Text.text = "Malta"
			$Panel/OrderData/To_Text.text = "Italy"
		"KP9013":
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Luxembourg Logistics Group"
			$Panel/OrderData/Date_of_Departure_Text.text = "08.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "11.05.2024"
			$Panel/OrderData/From_Text.text = "Luxembourg"
			$Panel/OrderData/To_Text.text = "Belgium"


func _on_button_pressed():
	match $Panel/OrderNumber/OrderNumber.text:
		"ZP9538":
			if $Panel/OrderData/Comapny_Name_Text.text == "EuroTrans Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "21.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "21.05.2024" && $Panel/OrderData/From_Text.text == "France" && $Panel/OrderData/To_Text.text == "Helsinki":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"GV4210":
			if $Panel/OrderData/Comapny_Name_Text.text == "Alpine Express" && $Panel/OrderData/Date_of_Departure_Text.text == "17.01.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "25.04.2024" && $Panel/OrderData/From_Text.text == "Switzerland" && $Panel/OrderData/To_Text.text == "Austria":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"FK7085":
			if $Panel/OrderData/Comapny_Name_Text.text == "Baltic Freight Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "23.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "26.04.2024" && $Panel/OrderData/From_Text.text == "Lithuania" && $Panel/OrderData/To_Text.text == "Latvia":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"RD6021":
			if $Panel/OrderData/Comapny_Name_Text.text == "Nordic Haulage Ltd." && $Panel/OrderData/Date_of_Departure_Text.text == "24.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "30.04.2024" && $Panel/OrderData/From_Text.text == "Sweden" && $Panel/OrderData/To_Text.text == "Norway":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"WH3472":
			if $Panel/OrderData/Comapny_Name_Text.text == "Iberian Cargo Services" && $Panel/OrderData/Date_of_Departure_Text.text == "25.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "28.04.2024" && $Panel/OrderData/From_Text.text == "Spain" && $Panel/OrderData/To_Text.text == "Spain":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"QL8496":
			if $Panel/OrderData/Comapny_Name_Text.text == "Balkan Express Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "26.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "29.04.2024" && $Panel/OrderData/From_Text.text == "Croatia" && $Panel/OrderData/To_Text.text == "Slovenia":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"JP0135":
			if $Panel/OrderData/Comapny_Name_Text.text == "Benelux Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "27.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "30.04.2024" && $Panel/OrderData/From_Text.text == "Belgium" && $Panel/OrderData/To_Text.text == "Greece":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"UV2479":
			if $Panel/OrderData/Comapny_Name_Text.text == "Danube Shipping Co." && $Panel/OrderData/Date_of_Departure_Text.text == "27.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "30.04.2024" && $Panel/OrderData/From_Text.text == "Hungary" && $Panel/OrderData/To_Text.text == "Romania":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"NE9167":
			if $Panel/OrderData/Comapny_Name_Text.text == "Irish Transport Services" && $Panel/OrderData/Date_of_Departure_Text.text == "29.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "02.05.2024" && $Panel/OrderData/From_Text.text == "Ireland" && $Panel/OrderData/To_Text.text == "France":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"OI5832":
			if $Panel/OrderData/Comapny_Name_Text.text == "Hellenic Logistics Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "30.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "03.05.2024" && $Panel/OrderData/From_Text.text == "Greece" && $Panel/OrderData/To_Text.text == "Cyprus":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"YX4096":
			if $Panel/OrderData/Comapny_Name_Text.text == "Italian Freight Forwarders" && $Panel/OrderData/Date_of_Departure_Text.text == "01.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "04.05.2024" && $Panel/OrderData/From_Text.text == "Cyprus" && $Panel/OrderData/To_Text.text == "Vatican City":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"LD6259":
			if $Panel/OrderData/Comapny_Name_Text.text == "Central European Transport" && $Panel/OrderData/Date_of_Departure_Text.text == "01.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "05.05.2024" && $Panel/OrderData/From_Text.text == "Czech Republic" && $Panel/OrderData/To_Text.text == "Slovakia":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"AM7148":
			if $Panel/OrderData/Comapny_Name_Text.text == "Swiss Cargo Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "03.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "06.05.2024" && $Panel/OrderData/From_Text.text == "Switzerland" && $Panel/OrderData/To_Text.text == "Liechtenstein":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"ZT8032":
			if $Panel/OrderData/Comapny_Name_Text.text == "Polish Cargo Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "04.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "07.05.2024" && $Panel/OrderData/From_Text.text == "Poland" && $Panel/OrderData/To_Text.text == "Ukraine":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"BG1094":
			if $Panel/OrderData/Comapny_Name_Text.text == "Finnish Freight Carriers" && $Panel/OrderData/Date_of_Departure_Text.text == "05.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "08.05.2024" && $Panel/OrderData/From_Text.text == "Finland" && $Panel/OrderData/To_Text.text == "Sweden":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"EC2675":
			if $Panel/OrderData/Comapny_Name_Text.text == "Scandinavian Shipping Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "06.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "08.05.2024" && $Panel/OrderData/From_Text.text == "Denmark" && $Panel/OrderData/To_Text.text == "Norway":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"JN5204":
			if $Panel/OrderData/Comapny_Name_Text.text == "Italian Express Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "07.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "10.05.2024" && $Panel/OrderData/From_Text.text == "Malta" && $Panel/OrderData/To_Text.text == "Italy":
				RecordChange.emit()
			else:
				FalseChange.emit()
		"KP9013":
			if $Panel/OrderData/Comapny_Name_Text.text == "Luxembourg Logistics Group" && $Panel/OrderData/Date_of_Departure_Text.text == "16.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "21.05.2024" && $Panel/OrderData/From_Text.text == "Luxembourg" && $Panel/OrderData/To_Text.text == "Belgium":
				RecordChange.emit()
			else:
				FalseChange.emit()
