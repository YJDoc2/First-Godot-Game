extends Node2D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	Global.view_range = 200
	Global.score = 0
	var range_timer = Timer.new()
	range_timer.autostart = true
	range_timer.wait_time = 10
	range_timer.connect("timeout",self,"_on_range_timeout")
	add_child(range_timer)
	var next_level_timer = Timer.new()
	next_level_timer.autostart = true
	next_level_timer.wait_time = 30
	next_level_timer.one_shot = true
	next_level_timer.connect("timeout",self,"_on_next_level_timeout")
	add_child(next_level_timer)


func _on_range_timeout():
	Global.view_range = Global.view_range-50

func _on_next_level_timeout():
	get_tree().change_scene("res://src/Levels/Level2.tscn")
