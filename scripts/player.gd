extends RigidBody2D

var force = Vector2(0,-70)
var x_position

func _ready():
	contact_monitor = true
	max_contacts_reported = 2
	x_position = self.position.x

func _integrate_forces(state):
	if Input.is_action_pressed("Jump_Up"):
		self.apply_central_impulse(force)
	self.apply_central_force(Vector2(0,20))
		
	position.x = x_position
	


func _on_body_entered(body):
	print(body.name)
	if body.name == "Ground":
		print("Game Over")
	if body.name == "obstacle":
		DataStorage.score += 1
