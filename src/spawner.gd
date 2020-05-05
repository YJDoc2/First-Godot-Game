tool
extends Node2D


export(PackedScene) var spawn_item
export(float) var spawn_time = 2

func _ready():
	var timer = Timer.new()
	timer.autostart = true
	timer.wait_time = spawn_time
	timer.connect("timeout",self,"_on_timeout")
	add_child(timer)

func _on_timeout():
	var spawn = spawn_item.instance()
	spawn.position = position
	get_parent().add_child(spawn)

func _get_configuration_warning()->String:
	return "The property spawn_item can't be empty" if not spawn_item else ""
