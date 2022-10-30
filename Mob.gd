extends RigidBody2D

var velocity : float setget _set_velocity,_get_velocity

export(float, 100.0, 200.0, 1.0) var min_speed : float = 150.0
export(float, 201.0, 300.0, 1.0) var max_speed : float = 250.0

func _ready():
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

func _set_velocity(_new_value: float) -> void:
	return

func _get_velocity() -> float:
	return rand_range(min_speed, max_speed)

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
