shader_type canvas_item;

uniform vec2 mouse_position;
uniform float view_range;

varying vec2 world_pos;

void vertex() {
	world_pos = (WORLD_MATRIX * vec4(VERTEX, 1.0, 1.0)).xy;
}

void fragment(){

vec4 col = texture(TEXTURE, UV);
float dist = distance(world_pos, mouse_position);
if (dist > view_range){
    col.a = 0.0
}else{
	col = col	
}

COLOR = col;


}