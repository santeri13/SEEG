extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var file = FileAccess.open("res://Backend/Text Files/Email/inbox.txt", FileAccess.READ_WRITE)
	var data2 = "support_admin@utcorp.com,Today tasks,Today tasks would be changing on tracking code TR25896 from Estonia to Helsinki and arrival time to 11.12.2023. Also chnage on BS25896 departure to 17.01.2024, OK\n"
	file.store_line(data2)
	var data = "tech_guy@utcorpi.com,VPN access chnage,Can you change your VPN path to this 101.0.0.0/24,malisiouse\n"
	file.store_line(data)
	file.close()
	print("file saved!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_4_pressed():
	$GameStart/Vpn.show()


func _on_button_3_pressed():
	$GameStart/WorkChat.show()


func _on_button_2_pressed():
	$GameStart/Email.show()
	$GameStart/List_of_tasks/Text_List_of_task.text = "Tasks:\n Change infromation on number TR25896: \n \t Estonia to Helsinki \n \t arrival time to 11.12.2023 \t BS25896: \n \t departure to 17.01.2024"


func _on_button_pressed():
	$GameStart/RecordApp.show()
