extends CharacterBody3D

@export var move_speed: float = 5.0
@export var sprint_speed: float = 8.0
@export var jump_force: float = 5.0
@export var gravity: float = 12.0
@export var min_look_angle: float = -90.0
@export var max_look_angle: float = 90.0

var flashlight_on: bool = true
var mouse_delta: Vector2 = Vector2()
@onready var camera: Camera3D = $Camera3D

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	position = Config.player_initial_position
	camera.position = Config.camera_initial_position
	camera.rotation_degrees = Config.camera_initial_rotation
	add_to_group("jugador")

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		mouse_delta = event.relative

func _process(_delta: float) -> void:
	if Config.menu:
		return
	_handle_camera_rotation(_delta)

func _physics_process(delta: float) -> void:
	_apply_gravity(delta)
	_handle_jump()
	_handle_flashlight()
	_handle_movement(delta)
	move_and_slide()

func _handle_camera_rotation(_delta: float) -> void:
	if mouse_delta.length() > 0:
		var scale_factor = 0.05
		rotate_y(deg_to_rad(-mouse_delta.x * Config.camera_sensitivity * scale_factor))
		
		var new_rotation = camera.rotation_degrees
		new_rotation.x -= mouse_delta.y * Config.camera_sensitivity * scale_factor
		new_rotation.x = clamp(new_rotation.x, min_look_angle, max_look_angle)
		camera.rotation_degrees = new_rotation
		
		mouse_delta = Vector2.ZERO

func _apply_gravity(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= gravity * delta

func _handle_jump() -> void:
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_force

func _handle_flashlight() -> void:
	if Input.is_action_just_pressed("linterna"):
		if Config.has_flashlight:
			flashlight_on = !flashlight_on
	$Camera3D/SpotLight3D.visible = flashlight_on

func _handle_movement(_delta: float) -> void:
	var input_direction = Input.get_vector("left", "right", "up", "down")
	var direction = (transform.basis * Vector3(input_direction.x, 0, input_direction.y)).normalized()
	
	if direction:
		velocity.x = direction.x * move_speed
		velocity.z = direction.z * move_speed
	else:
		velocity.x = move_toward(velocity.x, 0, move_speed)
		velocity.z = move_toward(velocity.z, 0, move_speed)
