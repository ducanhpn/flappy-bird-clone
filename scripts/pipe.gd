extends StaticBody2D

var vertical_scale = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	apply_scale(Vector2(1, vertical_scale));
	self.position.y =  576 - get_node("AnimatedSprite2D").sprite_frames.get_frame_texture("default",0).get_size().y*vertical_scale/2
