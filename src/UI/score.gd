extends Control


func _ready():
	mouse_filter = MOUSE_FILTER_IGNORE
	set_process(true)



func _process(_delta):
	$Label.text = 'Score : %s'%Global.score
