extends Control

signal openRecord
signal RecordChange
signal FalseChange
signal CloseRecordApp
signal WorkedWithRecord

var level = 0

var PL289087 = false
var ZP9538 = false
var GV4210 = false
var FK7085 = false
var RD6021 = false
var WH3472 = false
var QL8496 = false
var JP0135 = false
var UV2479 = false
var NE9167 = false
var OI5832 = false
var YX4096 = false
var LD6259 = false
var AM7148 = false
var ZT8032 = false
var BG1094 = false
var EC2675 = false
var JN5204 = false
var KP9013 = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_send_pressed():
		if $Panel/OrderNumber/OrderNumber.text == "PL289087" && level == 0:
			openRecord.emit()
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "DepartureOU"
			$Panel/OrderData/Date_of_Departure_Text.text = "19.11.2023"
			$Panel/OrderData/Date_of_Arriving_Text.text = "19.12.2023"
			$Panel/OrderData/From_Text.text = "Poland"
			$Panel/OrderData/To_Text.text = "Estonia"
		elif $Panel/OrderNumber/OrderNumber.text =="ZP9538" && level == 1 && ZP9538 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "EuroTrans Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "21.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "24.04.2024"
			$Panel/OrderData/From_Text.text = "France"
			$Panel/OrderData/To_Text.text = "Spain"
		elif $Panel/OrderNumber/OrderNumber.text == "GV4210" && level == 1 && GV4210 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Alpine Express"
			$Panel/OrderData/Date_of_Departure_Text.text = "22.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "25.04.2024"
			$Panel/OrderData/From_Text.text = "Switzerland"
			$Panel/OrderData/To_Text.text = "Austria"
		elif $Panel/OrderNumber/OrderNumber.text == "FK7085" && level == 2 && FK7085 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Baltic Freight Solutions"
			$Panel/OrderData/Date_of_Departure_Text.text = "23.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "26.04.2024"
			$Panel/OrderData/From_Text.text = "Estonia"
			$Panel/OrderData/To_Text.text = "Latvia"
		elif $Panel/OrderNumber/OrderNumber.text =="RD6021" && level == 2 && RD6021 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Nordic Haulage Ltd."
			$Panel/OrderData/Date_of_Departure_Text.text = "24.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "27.04.2024"
			$Panel/OrderData/From_Text.text = "Sweden"
			$Panel/OrderData/To_Text.text = "Norway"
		elif $Panel/OrderNumber/OrderNumber.text == "WH3472" && level == 3 && WH3472 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Iberian Cargo Services"
			$Panel/OrderData/Date_of_Departure_Text.text = "25.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "28.04.2024"
			$Panel/OrderData/From_Text.text = "Portugal"
			$Panel/OrderData/To_Text.text = "Spain"
		elif $Panel/OrderNumber/OrderNumber.text == "QL8496" && level == 3 && QL8496 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Balkan Transport Solutions"
			$Panel/OrderData/Date_of_Departure_Text.text = "26.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "29.04.2024"
			$Panel/OrderData/From_Text.text = "Croatia"
			$Panel/OrderData/To_Text.text = "Slovenia"
		elif $Panel/OrderNumber/OrderNumber.text == "JP0135" && level == 4 && JP0135 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Benelux Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "27.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "30.04.2024"
			$Panel/OrderData/From_Text.text = "Belgium"
			$Panel/OrderData/To_Text.text = "Netherlands"
		elif $Panel/OrderNumber/OrderNumber.text == "UV2479" && level == 4 && UV2479 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Danube Shipping Co."
			$Panel/OrderData/Date_of_Departure_Text.text = "28.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "01.05.2024"
			$Panel/OrderData/From_Text.text = "Hungary"
			$Panel/OrderData/To_Text.text = "Romania"	
		elif $Panel/OrderNumber/OrderNumber.text == "NE9167" && level == 5 && NE9167 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Irish Transport Services"
			$Panel/OrderData/Date_of_Departure_Text.text = "29.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "02.05.2024"
			$Panel/OrderData/From_Text.text = "Ireland"
			$Panel/OrderData/To_Text.text = "United Kingdom"
		elif $Panel/OrderNumber/OrderNumber.text == "OI5832" && level == 5 && OI5832 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Greek Express Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "30.04.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "03.05.2024"
			$Panel/OrderData/From_Text.text = "Greece"
			$Panel/OrderData/To_Text.text = "Cyprus"
		elif $Panel/OrderNumber/OrderNumber.text == "YX4096" && level == 6 && YX4096 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Italian Freight Forwarders"
			$Panel/OrderData/Date_of_Departure_Text.text = "01.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "04.05.2024"
			$Panel/OrderData/From_Text.text = "Italy"
			$Panel/OrderData/To_Text.text = "Vatican City"
		elif $Panel/OrderNumber/OrderNumber.text == "LD6259" && level == 6 && LD6259 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Central European Transport"
			$Panel/OrderData/Date_of_Departure_Text.text = "02.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "05.05.2024"
			$Panel/OrderData/From_Text.text = "Czech Republic"
			$Panel/OrderData/To_Text.text = "Slovakia"
		elif $Panel/OrderNumber/OrderNumber.text == "AM7148" && level == 7 && AM7148 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Swiss Alpine Hauliers"
			$Panel/OrderData/Date_of_Departure_Text.text = "03.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "06.05.2024"
			$Panel/OrderData/From_Text.text = "Switzerland"
			$Panel/OrderData/To_Text.text = "Liechtenstein"
		elif $Panel/OrderNumber/OrderNumber.text == "ZT8032" && level == 7 && ZT8032 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Polish Cargo Logistics"
			$Panel/OrderData/Date_of_Departure_Text.text = "04.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "07.05.2024"
			$Panel/OrderData/From_Text.text = "Poland"
			$Panel/OrderData/To_Text.text = "Belarus"
		elif $Panel/OrderNumber/OrderNumber.text == "BG1094" && level == 8 && BG1094 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Finnish Freight Carriers"
			$Panel/OrderData/Date_of_Departure_Text.text = "05.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "08.05.2024"
			$Panel/OrderData/From_Text.text = "Finland"
			$Panel/OrderData/To_Text.text = "Sweden"
		elif $Panel/OrderNumber/OrderNumber.text == "EC2675" && level == 8 && EC2675 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Scandinavian Shipping Solutions"
			$Panel/OrderData/Date_of_Departure_Text.text = "06.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "09.05.2024"
			$Panel/OrderData/From_Text.text = "Denmark"
			$Panel/OrderData/To_Text.text = "Norway"
		elif $Panel/OrderNumber/OrderNumber.text == "JN5204" && level == 8 && JN5204 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Maltese Transport Services"
			$Panel/OrderData/Date_of_Departure_Text.text = "07.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "10.05.2024"
			$Panel/OrderData/From_Text.text = "Malta"
			$Panel/OrderData/To_Text.text = "Italy"
		elif $Panel/OrderNumber/OrderNumber.text == "KP9013" && level == 8 && KP9013 == false:
			$Panel/OrderNumber.hide()
			$Panel/OrderData.show()
			$Panel/OrderData/Comapny_Name_Text.text = "Luxembourg Logistics Group"
			$Panel/OrderData/Date_of_Departure_Text.text = "08.05.2024"
			$Panel/OrderData/Date_of_Arriving_Text.text = "11.05.2024"
			$Panel/OrderData/From_Text.text = "Luxembourg"
			$Panel/OrderData/To_Text.text = "Belgium"
		else:
			WorkedWithRecord.emit()


func _on_button_pressed():
	match $Panel/OrderNumber/OrderNumber.text:
		"ZP9538":
			if $Panel/OrderData/Comapny_Name_Text.text == "EuroTrans Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "21.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "21.05.2024" && $Panel/OrderData/From_Text.text == "France" && $Panel/OrderData/To_Text.text == "Helsinki":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				ZP9538 = true
			else:
				FalseChange.emit()
		"GV4210":
			if $Panel/OrderData/Comapny_Name_Text.text == "Alpine Express" && $Panel/OrderData/Date_of_Departure_Text.text == "17.01.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "25.04.2024" && $Panel/OrderData/From_Text.text == "Switzerland" && $Panel/OrderData/To_Text.text == "Austria":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				GV4210 = true
			else:
				FalseChange.emit()
		"FK7085":
			if $Panel/OrderData/Comapny_Name_Text.text == "Baltic Freight Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "23.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "26.04.2024" && $Panel/OrderData/From_Text.text == "Lithuania" && $Panel/OrderData/To_Text.text == "Latvia":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				FK7085 = true
			else:
				FalseChange.emit()
		"RD6021":
			if $Panel/OrderData/Comapny_Name_Text.text == "Nordic Haulage Ltd." && $Panel/OrderData/Date_of_Departure_Text.text == "24.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "30.04.2024" && $Panel/OrderData/From_Text.text == "Sweden" && $Panel/OrderData/To_Text.text == "Norway":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				RD6021 = true
			else:
				FalseChange.emit()
		"WH3472":
			if $Panel/OrderData/Comapny_Name_Text.text == "Iberian Cargo Services" && $Panel/OrderData/Date_of_Departure_Text.text == "25.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "28.04.2024" && $Panel/OrderData/From_Text.text == "Spain" && $Panel/OrderData/To_Text.text == "Spain":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				WH3472 = true
			else:
				FalseChange.emit()
		"QL8496":
			if $Panel/OrderData/Comapny_Name_Text.text == "Balkan Express Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "26.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "29.04.2024" && $Panel/OrderData/From_Text.text == "Croatia" && $Panel/OrderData/To_Text.text == "Slovenia":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				QL8496 = true
			else:
				FalseChange.emit()
		"JP0135":
			if $Panel/OrderData/Comapny_Name_Text.text == "Benelux Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "27.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "30.04.2024" && $Panel/OrderData/From_Text.text == "Belgium" && $Panel/OrderData/To_Text.text == "Greece":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				JP0135 = true
			else:
				FalseChange.emit()
		"UV2479":
			if $Panel/OrderData/Comapny_Name_Text.text == "Danube Shipping Co." && $Panel/OrderData/Date_of_Departure_Text.text == "27.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "30.04.2024" && $Panel/OrderData/From_Text.text == "Hungary" && $Panel/OrderData/To_Text.text == "Romania":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				UV2479 = true
			else:
				FalseChange.emit()
		"NE9167":
			if $Panel/OrderData/Comapny_Name_Text.text == "Irish Transport Services" && $Panel/OrderData/Date_of_Departure_Text.text == "29.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "02.05.2024" && $Panel/OrderData/From_Text.text == "Ireland" && $Panel/OrderData/To_Text.text == "France":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				NE9167 = true
			else:
				FalseChange.emit()
		"OI5832":
			if $Panel/OrderData/Comapny_Name_Text.text == "Hellenic Logistics Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "30.04.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "03.05.2024" && $Panel/OrderData/From_Text.text == "Greece" && $Panel/OrderData/To_Text.text == "Cyprus":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				OI5832 = true
			else:
				FalseChange.emit()
		"YX4096":
			if $Panel/OrderData/Comapny_Name_Text.text == "Italian Freight Forwarders" && $Panel/OrderData/Date_of_Departure_Text.text == "01.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "04.05.2024" && $Panel/OrderData/From_Text.text == "Cyprus" && $Panel/OrderData/To_Text.text == "Vatican City":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				YX4096 = true
			else:
				FalseChange.emit()
		"LD6259":
			if $Panel/OrderData/Comapny_Name_Text.text == "Central European Transport" && $Panel/OrderData/Date_of_Departure_Text.text == "01.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "05.05.2024" && $Panel/OrderData/From_Text.text == "Czech Republic" && $Panel/OrderData/To_Text.text == "Slovakia":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				LD6259 = true
			else:
				FalseChange.emit()
		"AM7148":
			if $Panel/OrderData/Comapny_Name_Text.text == "Swiss Cargo Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "03.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "06.05.2024" && $Panel/OrderData/From_Text.text == "Switzerland" && $Panel/OrderData/To_Text.text == "Liechtenstein":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				AM7148 = true
			else:
				FalseChange.emit()
		"ZT8032":
			if $Panel/OrderData/Comapny_Name_Text.text == "Polish Cargo Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "04.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "07.05.2024" && $Panel/OrderData/From_Text.text == "Poland" && $Panel/OrderData/To_Text.text == "Ukraine":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				ZT8032 = true
			else:
				FalseChange.emit()
		"BG1094":
			if $Panel/OrderData/Comapny_Name_Text.text == "Finnish Freight Carriers" && $Panel/OrderData/Date_of_Departure_Text.text == "05.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "08.05.2024" && $Panel/OrderData/From_Text.text == "Finland" && $Panel/OrderData/To_Text.text == "Finland":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				BG1094 = true
			else:
				FalseChange.emit()
		"EC2675":
			if $Panel/OrderData/Comapny_Name_Text.text == "Scandinavian Shipping Solutions" && $Panel/OrderData/Date_of_Departure_Text.text == "06.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "08.05.2024" && $Panel/OrderData/From_Text.text == "Denmark" && $Panel/OrderData/To_Text.text == "Norway":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				EC2675 = true
			else:
				FalseChange.emit()
		"JN5204":
			if $Panel/OrderData/Comapny_Name_Text.text == "Italian Express Logistics" && $Panel/OrderData/Date_of_Departure_Text.text == "07.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "10.05.2024" && $Panel/OrderData/From_Text.text == "Malta" && $Panel/OrderData/To_Text.text == "Italy":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				JN5204 = true
			else:
				FalseChange.emit()
		"KP9013":
			if $Panel/OrderData/Comapny_Name_Text.text == "Luxembourg Logistics Group" && $Panel/OrderData/Date_of_Departure_Text.text == "16.05.2024" && $Panel/OrderData/Date_of_Arriving_Text.text == "20.05.2024" && $Panel/OrderData/From_Text.text == "Luxembourg" && $Panel/OrderData/To_Text.text == "Belgium":
				RecordChange.emit()
				$Panel/OrderData.hide()
				$Panel/OrderNumber.show()
				KP9013 = true
			else:
				FalseChange.emit()


func _on_close_pressed():
	$Panel/OrderData.hide()
	$Panel/OrderNumber.show()
	$Panel/OrderNumber/OrderNumber.text=""
	CloseRecordApp.emit()

func level_check(new_level):
	level = new_level
	print(level)
