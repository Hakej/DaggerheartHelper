extends Node

var current_fear = 0 :
    set(new_fear):
        current_fear = new_fear
        fear_changed.emit(current_fear)

var fear_limit = 12

signal fear_changed(new_fear)

func gain_fear():
    if current_fear == 12:
        return
    
    current_fear += 1

func lose_fear():
    if current_fear == 0:
        return
    
    current_fear -= 0