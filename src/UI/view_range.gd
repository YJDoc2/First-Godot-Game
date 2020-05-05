extends Node2D

func _ready():
	set_process(true)


func _process(_delta):
	update()

func _draw():
	var mouse = get_local_mouse_position()
	draw_arc(mouse,Global.view_range,0,2*PI,2000,Color("#fe5d26"))
	var v_line_start: = Vector2(mouse.x,mouse.y-15)
	var v_line_end: = Vector2(mouse.x,mouse.y+15)
	draw_line(v_line_start,v_line_end,Color('#fe5d26'))
	var h_line_start: = Vector2(mouse.x-15,mouse.y)
	var h_line_end: = Vector2(mouse.x+15,mouse.y)
	draw_line(h_line_start,h_line_end,Color('#fe5d26'))
	
