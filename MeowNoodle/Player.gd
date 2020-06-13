extends KinematicBody2D

export (int) var speed = 200

var target = Vector2(0, 0)
var velocity = Vector2(0, 0)
var table
#var customers = get_parent().get_node("Customers")
#var table = customers.get_node("Tables")

func _ready():
	table = get_parent().get_node("Customers/Tables/table2")
	print(table.position)
	
	
func _input(event):
# change z.index of player when interacting with objects
	if position.y < $"../DadCat".position.y && position.y > table.position.y - 10: 
		z_index = 1
	elif position.y < table.position.y:
		z_index = 0
	else:
		z_index = 2
		



func _physics_process(delta):
# make player follow the mouse
	if Input.is_action_pressed("click"):
		target = get_global_mouse_position()
		velocity = position.direction_to(target) * speed
	if position.distance_to(target) > 5 :
		velocity = move_and_slide(velocity)
# stop when too close to dad
	if position.distance_to($"../DadCat".position) < 30:
		target = Vector2(0, 0)
		velocity = Vector2(0, 0)




