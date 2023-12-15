extends RigidBody2D

var force = Vector2(0,-70)

func _integrate_forces(state):
	if Input.is_action_pressed("Jump_Up"):
		print("Pressed")
		self.apply_central_impulse(force)
