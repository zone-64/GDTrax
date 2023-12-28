# GDTrax
A music handler for Godot 4.x

Make sure to add the scripts path to the autoload in your project settings before you do anything else


## Basic Commands

- load_track(path: String, pitch: float = 1.0, force_play: bool = false)
  Loads the audio file without actually playing it. If you wish to play the audio file then you would have to set the force_play parametre to true.
  For example:
    func _ready():
      GdTrax.load_track("music/town.mp3", 1.0, true)
    
