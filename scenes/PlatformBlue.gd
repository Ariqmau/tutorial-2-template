extends AnimatableBody2D

@export var speed = 500.0
@export var rotation_speed = 3.0

func _ready():
	print("Platform initialized")

func _physics_process(delta):
	if Input.is_action_pressed("move_up"):
		global_position.y -= speed * delta
		
	if Input.is_action_pressed("move_down"):
		global_position.y += speed * delta
		
	if Input.is_action_pressed("move_left"):
		global_position.x -= speed * delta
		
	if Input.is_action_pressed("move_right"):
		global_position.x += speed * delta
		
	if Input.is_action_pressed("tilt_left"):
		rotation -= rotation_speed * delta
		
	if Input.is_action_pressed("tilt_right"):
		rotation += rotation_speed * delta
