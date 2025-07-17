shader_type canvas_item;

uniform vec4 color: source_color = vec4(1.0,1.0,1.0,1.0);

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	vec4 main_texture = texture(TEXTURE,UV);
	COLOR.rgb = main_texture.rgb * color.rgb; 
}

