extends Node2D

export var speed:float = 200
var i = 0
var velocity:Vector2 = Vector2.ZERO
func _ready():
	set_process(true)
	var ang = rand_range(0,PI)
	velocity = Vector2(speed*cos(ang),speed*sin(ang))


func _process(delta):
	var view = get_viewport_rect().size
	if i%100 == 0:
		velocity = velocity.rotated(rand_range(0,PI))	
	position += velocity*delta
	position.x = wrapf(position.x,0,view.x)
	position.y = wrapf(position.y,0,view.y)
	i = (i+1)%100
	var mouse = get_global_mouse_position()
	get_material().set_shader_param("mouse_position", mouse)
	get_material().set_shader_param("view_range", Global.view_range)


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.pressed && event.button_index == BUTTON_LEFT:
		Global.score += 10
		queue_free()
