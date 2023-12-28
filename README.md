# GDTrax
A music handler for Godot 4.x

Make sure to add the scripts path to the autoload in your project settings before you do anything else


## Basic Functions

If a function parameter is surrounded by <> then its an optional parameter

GdTrax.load_track(path, <pitch>, <force_play>)

This function loads the audio file for use. If you wish to play the file after its finished loading then set the force_play parameter to true

For example:

  func _ready():
    GdTrax.load_track("snd/mus/meadows.mp3", 1.0, true)
    
