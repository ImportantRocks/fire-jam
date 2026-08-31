extends Node

# 0 = The fire is dead, 1 = Weak fire, 2 = Medium fire, 3 = Strong fire
# Fire scripting is handled mainly in fire.gd
var firelevel = 2

# Sends a signal that the fire has been fed and should increase 1 level.
signal fireup()
