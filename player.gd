extends RigidBody2D

signal game_over;

func _ready():
	pass

func _process(_delta):
	if Input.is_action_just_pressed("ui_up"):
		linear_velocity.y=-100
	#if linear_velocity.y==0:
	#	$Particles2D.emitting=true;
	#else:
	#	$Particles2D.emitting=false;
	#pass


func _on_VisibilityNotifier2D_screen_exited():
	emit_signal("game_over")
	pass # Replace with function body.
