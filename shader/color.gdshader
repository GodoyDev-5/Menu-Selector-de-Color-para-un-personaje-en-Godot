shader_type canvas_item;

uniform float epsilon = 0.0001;

uniform vec4 old_color1 : source_color;
uniform vec4 new_color1 : source_color;

uniform vec4 old_color2 : source_color;
uniform vec4 new_color2 : source_color;

uniform vec4 old_color3 : source_color;
uniform vec4 new_color3 : source_color;

uniform vec4 old_color4 : source_color;
uniform vec4 new_color4 : source_color;

uniform vec4 old_color5 : source_color;
uniform vec4 new_color5 : source_color;

vec4 slot_1(sampler2D sprite,vec2 uv,vec4 color) {
	vec4 textura = texture(sprite,uv);
	
	if (length(textura - old_color1) < epsilon)
		color = new_color1;
		return color;
	if (textura != old_color1)
		color=textura;
		return color;
}

vec4 slot_2(sampler2D sprite,vec2 uv,vec4 color) {
	vec4 textura = texture(sprite,uv);
	
	if (length(textura - old_color2) < epsilon)
		color = new_color2;
		return color;
	if (textura != old_color2)
		color=textura;
		return color;
}

vec4 slot_3(sampler2D sprite,vec2 uv,vec4 color) {
	vec4 textura = texture(sprite,uv);
	
	if (length(textura - old_color3) < epsilon)
		color = new_color3;
		return color;
	if (textura != old_color3)
		color=textura;
		return color;
}

vec4 slot_4(sampler2D sprite,vec2 uv,vec4 color) {
	vec4 textura = texture(sprite,uv);
	
	if (length(textura - old_color4) < epsilon)
		color = new_color4;
		return color;
	if (textura != old_color4)
		color=textura;
		return color;
}

vec4 slot_5(sampler2D sprite,vec2 uv,vec4 color) {
	vec4 textura = texture(sprite,uv);
	
	if (length(textura - old_color5) < epsilon)
		color = new_color5;
		return color;
	if (textura != old_color5)
		color=textura;
		return color;
}

void fragment() {
	COLOR = slot_1(TEXTURE,UV,COLOR);
	COLOR = slot_2(TEXTURE,UV,COLOR);
	COLOR = slot_3(TEXTURE,UV,COLOR);
	COLOR = slot_4(TEXTURE,UV,COLOR);
	COLOR = slot_5(TEXTURE,UV,COLOR);
}