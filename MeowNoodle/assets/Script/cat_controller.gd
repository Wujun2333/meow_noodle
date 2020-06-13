extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"




# Called when the node enters the scene tree for the first time.
func _ready():
	 # Replace with function body.
	print("I am Hannan!")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	# Mouse in viewport coordinates
	# if hannan position y < jack position y, hannah z = -1
	
	if name == "Hannah":
		
		if event is InputEventMouseButton:
			position = event.position
			print(position)
		elif event is InputEventMouseMotion:
			pass
