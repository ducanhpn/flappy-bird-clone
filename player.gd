extends RigidBody2D

var force = Vector2(0,-70)

func _ready():
	contact_monitor = true
	max_contacts_reported = 2

func _integrate_forces(state):
	if Input.is_action_pressed("Jump_Up"):
		self.apply_central_impulse(force)
	
		


func _on_body_entered(body):
	if body.name == "Ground":
		print("Game Over")
