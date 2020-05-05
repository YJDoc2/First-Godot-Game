extends Node

signal RED_HIT

var score:int = 0 setget set_score
var view_range:int = 200 setget set_range

func set_score(new_score:int)->void:
	if new_score<0:
		get_tree().change_scene("res://src/UI/EndUI.tscn")
	else:
		score = new_score

func set_range(new_range:int)->void:
	view_range = new_range
