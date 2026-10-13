shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture;

// --- Parámetros ajustables ---
uniform float pixel_resolution = 240.0;
uniform float pixelation_mix = 1.0;
uniform float color_levels = 64.0;
uniform float dither_strength = 0.3;
uniform float warp_intensity = 0.001;
uniform float scanline_intensity = 0.1;
uniform float scanline_density = 100.0;
uniform float brightness = 0.6;      // < 1 oscurece, > 1 aclara
uniform float contrast = 1.8;        // 1 = sin cambio, >1 aumenta contraste

void fragment() {
    vec2 uv = UV;
    
    // Warp (ondulación)
    float warp = warp_intensity * (0.5 + 0.5 * sin(TIME * 2.0 + uv.y * 15.0));
    uv.x += warp * sin(uv.y * 25.0 + TIME);
    
    // Pixelación
    vec2 pixel_uv = floor(uv * pixel_resolution) / pixel_resolution;
    vec4 original_color = texture(screen_texture, uv);
    vec4 pixelated_color = texture(screen_texture, pixel_uv);
    vec4 color = mix(original_color, pixelated_color, pixelation_mix);
    
    // Posterización con dithering
    ivec2 screen_coords = ivec2(FRAGCOORD.xy);
    float dither_pattern = fract(sin(dot(vec2(screen_coords), vec2(12.9898, 78.233))) * 43758.5453);
    vec3 color_with_dither = color.rgb + (dither_pattern - 0.5) * dither_strength / color_levels;
    color.rgb = floor(color_with_dither * color_levels) / color_levels;
    
    // Scanlines
    float scanline = 1.0 - scanline_intensity * abs(sin(uv.y * 3.14159 * scanline_density));
    color.rgb *= scanline;
    
    // --- Ajuste de contraste ---
    // Fórmula: (color - 0.5) * contraste + 0.5
    color.rgb = (color.rgb - 0.5) * contrast + 0.5;
    
    // Ajuste final de brillo
    color.rgb *= brightness;
    
    COLOR = color;
}