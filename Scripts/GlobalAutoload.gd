extends Node


# Fire scripting is handled in fire.gd
var fire_level = 2

var logs_remaining = 10

# Signal that the fire has been fed and should increase 1 level.
signal log_added()

# Signal the the fire has died and cannot be restarted
signal fire_died()

# Signal that the player has run out of logs
signal logs_depleted()
