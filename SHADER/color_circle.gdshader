shader_type canvas_item;

uniform float radius : hint_range(0.0, 0.3) = 0.3;
uniform vec2 center = vec2(0.5, 0.5);

void fragment() {
    float dist = distance(center, UV);
    if (dist > radius) {
        COLOR.a = 0.0;
    }
}