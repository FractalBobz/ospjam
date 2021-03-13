extends RigidBody2D

func _ready():
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.

func _on_hit_ground():
	applied_force=Vector2(-300,0)
	pass
