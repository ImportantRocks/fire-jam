extends Node


# Fire scripting is handled in fire.gd
var fire_level = 2

var logs_remaining = 10

# Sends a signal that the fire has been fed and should increase 1 level.
signal log_added()
