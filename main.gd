extends Node

export (PackedScene) var Spike;
export (int) var min_spike_velo;
export (int) var max_spike_velo;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var spike=Spike.instance()
	add_child(spike)
	var direction=-3*PI/8
	spike.position=$Node2D.position
	spike.rotation=direction
	spike.linear_velocity=Vector2(rand_range(min_spike_velo,max_spike_velo),0)
	spike.linear_velocity=spike.linear_velocity.rotated(direction)
	pass # Replace with function body.


func _on_player_game_over():
	pass # Replace with function body.
