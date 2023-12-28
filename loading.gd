extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	GdTrax.load_music("music/lotuswaters.mp3")
	GdTrax.Player.play()



