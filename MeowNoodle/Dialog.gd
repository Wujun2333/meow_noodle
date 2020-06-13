extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	change_name("hannah")
	$Dialog.text = ("Hi dad! What are you doing here?")
	 # Replace with function body.

func change_name(name):
	if name == "hannah":
		$CharacterName.text = ("Hannah: ")
	elif name == "dad":
		$CharacterName.text = ("Dad: ")

func dialog(line):

	pass
#func _process(delta):
#pass
