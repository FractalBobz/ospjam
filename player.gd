extends RigidBody2D

func _ready():
	pass

func _process(_delta):
	if Input.is_action_just_pressed("ui_up"):
		linear_velocity.y=-100
	pass
