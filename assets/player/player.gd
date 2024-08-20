extends CharacterBody2D
const MAX_SPEED = 200

func _process(delta):
	var movement_vector = get_movement_vector()
	var direction = movement_vector.normalized()
	velocity = direction * MAX_SPEED
	move_and_slide()

func get_movement_vector():
	var movement_vector = Vector2.ZERO
	var x_movment = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_movment = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	return Vector2(x_movment, y_movment)
