extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var points = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		# Also play the coin sound
		coinSound.play()
		area.get_parent().addScore(points)
		self.get_parent().queue_free()
	else:
		pass