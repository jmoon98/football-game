extends CharacterBody2D

var ball_speed: int = 0
var thrown: bool = false

func _physics_process(delta: float) -> void:
	move_and_slide()

func _on_player_throw_ball(throw_charge, throw_dir) -> void:
	if not thrown:
		rotation = (get_global_mouse_position()-$"../Player".position).angle()
		print("signal received, charge: ", throw_charge, throw_dir)
		ball_speed = throw_charge
		velocity = throw_dir*ball_speed
		thrown = true
