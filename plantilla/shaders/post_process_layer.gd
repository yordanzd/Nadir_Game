extends CanvasLayer

var ver_menu: bool = false
@export_group("PSX Effect Settings")
@export_range(60, 480, 10) var psx_resolution: float = 240.0:
	set(value):
		psx_resolution = value
		update_shader_param("psx_resolution", value)

@export_range(8, 256, 8) var color_palette: float = 32.0:
	set(value):
		color_palette = value
		update_shader_param("color_palette", value)

@export_range(0.0, 1.0) var dither_strength: float = 0.3:
	set(value):
		dither_strength = value
		update_shader_param("dither_strength", value)

@export_range(0.0, 0.01) var warp_intensity: float = 0.002:
	set(value):
		warp_intensity = value
		update_shader_param("warp_intensity", value)

@export_range(0.0, 1.0) var scanline_intensity: float = 0.15:
	set(value):
		scanline_intensity = value
		update_shader_param("scanline_intensity", value)

@export_range(1.0, 3.0) var gamma_correction: float = 1.8:
	set(value):
		gamma_correction = value
		update_shader_param("gamma_correction", value)

@export var enabled: bool = true:
	set(value):
		enabled = value
		update_shader_param("enable_effect", value)
		visible = value

@onready var postprocess_rect: ColorRect = $post_process_rect

func _ready():
	# Configuración inicial
	layer = 128  # Alta prioridad de renderizado
	update_all_params()


func update_shader_param(param_name: String, value):
	if postprocess_rect and postprocess_rect.material is ShaderMaterial:
		postprocess_rect.material.set_shader_parameter(param_name, value)

func update_all_params():
	update_shader_param("psx_resolution", psx_resolution)
	update_shader_param("color_palette", color_palette)
	update_shader_param("dither_strength", dither_strength)
	update_shader_param("warp_intensity", warp_intensity)
	update_shader_param("scanline_intensity", scanline_intensity)
	update_shader_param("gamma_correction", gamma_correction)
	update_shader_param("enable_effect", enabled)
	update_shader_param("texture_banding", 0.3)

func set_effect_strength(strength: float):
	# Strength de 0 a 1
	psx_resolution = lerp(480.0, 120.0, strength)
	dither_strength = lerp(0.1, 0.5, strength)
	warp_intensity = lerp(0.0005, 0.005, strength)

# Para debug
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_F2:
			print("Current PSX settings:")
			print("  Resolution: ", psx_resolution)
			print("  Palette: ", color_palette)
			print("  Dither: ", dither_strength)

func _process(_delta: float) -> void:
	var fps = Performance.get_monitor(Performance.TIME_FPS)
	$fps.text = "FPS: " + str(fps)
