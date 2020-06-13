extends CanvasLayer


var day = 1 
onready var timer = get_node("HBoxContainer/Timer")


# Called when the node enters the scene tree for the first time.
func _ready():
	$HBoxContainer/DayCount.text = str(day)
	timer.set_wait_time(30)
	timer.start()
	

#func _process(delta):
#	pass

func _on_Timer_timeout():
	day += 1
	$HBoxContainer/DayCount.text = str(day)
	print(day)

