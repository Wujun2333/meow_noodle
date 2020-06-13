extends TextureRect
var currentLine
var script1 = [
	"Good morning dad!",
	"Oh hi, Hannah.",
	"Was that the landlord that just left?",
	"Yeah, that’s him.",
	"What did he say?",
	"Don’t worry about it Hannah. \nWhat are you doing here?",
	"Oh, mom wants me to check on you and see if there’s anything I can help with. After all, this is the first day of opening since the long pandemic!",
	"Haha, yes, I’m glad all that’s over now.",
	"Is everything ok, dad? You look…… worried.",
	"It’s nothing, we’ll be fine……",
	"No, tell me, dad. I know that look on your face, is that anything to do with the landlord?",
	"Okay…… Hannah, there’s something you need to know. But don’t tell your mother yet, she needs to recuperate in peace.",
	"I won’t.",
	"We…… we might lose our store.",
	"What ? ! ",
	"Yes. The landlord asked me to pay the rent from the past two months. I’m afraid we don’t have that many savings now, not even enough to hire new workers after we spend so much on……",
	"Yes, dad, I know, on mom’s hospitalization. \nDad, you know, I can help too. ",
	"Hannah…… I will work my hardest to keep you guys safe and warm. \nYou don’t need to do this.",
	"But I want to. You and mom always worked so hard just so I could choose for my own future. Now It’s time for me to take responsibility and help out our family. I've made my decision.",
	"Hannah. You’ve grown up. \nWe will do this together.",
	"Yes. We can overcome this!"]
# 
func _ready():
	if $"..".visible == true:
		currentLine = 0
		change_name("hannah")
		$Dialog/AnimationPlayer.play("typewriter_effect")
		$Dialog.text = (script1[currentLine])
		
	
		
func _process(delta):
#	print charater name fucntion
	if currentLine % 2 == 0:
		change_name("hannah")
	else:
		change_name("dad")
		
func change_name(name):
#	print charater name
	if name == "hannah":
		$CharacterName.text = ("- Hannah -")
	elif name == "dad":
		$CharacterName.text = ("- Dad -")
			
func _on_TextureButton_pressed():
	currentLine += 1
	if currentLine < script1.size():
	# print the script
		$Dialog.text = (script1[currentLine])
	# change typewriter animation effect speed
		if $Dialog.text.length() < 15:
			$Dialog/AnimationPlayer.playback_speed = 2.5
			$Dialog/AnimationPlayer.play("typewriter_effect")
		elif $Dialog.text.length() > 15 && $Dialog.text.length() < 40:
			$Dialog/AnimationPlayer.playback_speed = 2
			$Dialog/AnimationPlayer.play("typewriter_effect")
		else:
			$Dialog/AnimationPlayer.playback_speed = 1
			$Dialog/AnimationPlayer.play("typewriter_effect")
		print($Dialog.text.length())

	else:
#		var cutscene = $".."
		currentLine = 0
		$"..".visible = false
		print("End of the script")
		
#	if currentLine == script1.size() - 1:
#		currentLine = 0
		
		
		
	




	
#Dad: Oh hi Hannah.
#Hannah: Was that the landlord that just left?
#Dad: … Yeah, that’s him.
#Hannah: What did he say?
#Dad: Don’t worry about it Hannah. Why are you here?
#Hannah: Oh, mom wants me to check on you and see if there’s anything I can help with. After all, this is the first day of opening since the long pandemic!
#Dad: Haha, yes, I’m glad that’s over now.
#Hannah: Is everything ok, dad? You look… worried.
#Dad: It’s nothing, we’ll be fine...
#Hannah: No, tell me dad. I know that look on your face, is that anything to do with the landlord?
#Dad: Okay… Hannah, there’s something you need to know. But don’t tell your mother now, she needs to recuperate in peace.
#Hannah: I won’t.
#Dad: We… we might lose our store.
#Hannah: What?! 
#Dad: Yes. The landlord asked me to pay for rent from the past two months. I’m afraid we don’t have that much savings now, and not even enough to hire new workers after we spend so much on...
#Hannah: …Yes, dad, I know, on mom’s hospitalization. Dad, you know, I can help too. 
#Dad: Hannah… I will work my hardest to keep you guys safe and warm. You don’t need to do this.
#Hannah: But I want to. You and mom always worked so hard just so I could choose for my own life. Now It’s time for me to take responsibility and help out our family. I've made my decision.
#Dad: Hannah. You’ve grown up. We will do this together.
#Hannah: Yes. We will overcome this!
#



