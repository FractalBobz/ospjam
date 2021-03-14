extends RigidBody2D

func _ready():
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.

func _on_hit_ground():
	linear_velocity=Vector2(-400,0)
	angular_velocity=0
	pass


func _on_physics_body_entered(body):
	if body.get_name()=="Ground":
		_on_hit_ground()
	pass # Replace with function body.
