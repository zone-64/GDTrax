@icon("res://gdtrax/icon.svg")

extends Node
class_name GDTraxInstance


var Player = AudioStreamPlayer2D.new()

func load_track(path: String, pitch: float = 1.0, force_play: bool = false):
	# !! Currently supports MP3 files at the moment. !!
	
	# This function loads the file provided from the user, however the audio doesn't play unless explicitly told to
	
	
	if path != "":
		Player.pitch_scale = pitch
		var Stream: AudioStreamMP3 = AudioStreamMP3.new()
		var File: FileAccess = FileAccess.open(path, FileAccess.READ)
		if File != null:
			Stream.data = File.get_buffer(File.get_length())
			File.close()
		
		Player.stream = Stream
		if force_play:
			Player.play()
	else:
		print("GDTrax: File not provided")


func play():
	Player.play()

func pause():
	Player.stream_paused = true

func unpause():
	Player.stream_paused = false

func stop():
	Player.stop()

func unload():
	if Player.stream != null:
		Player.stream = null

func _ready():
	name = "GD Trax Instance: Initializing"
	Player.name = "GD Trax Stream Player"
	add_child(Player)
	name = "GD Trax"

func _process(delta):
	Player.max_distance += 1 * Player.max_distance

