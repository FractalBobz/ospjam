extends RigidBody2D

var touched=false;

func _ready():
	pass

func _process(_delta):
	if touched and linear_velocity==Vector2(0,0):
		linear_velocity=Vector2(-400,0)

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.

func _on_hit_ground():
	linear_velocity=Vector2(-400,0)
	angular_velocity=0
	touched=true
	pass


func _on_physics_body_entered(body):
	if body.get_name()=="Ground":
		_on_hit_ground()
	pass # Replace with function body.
