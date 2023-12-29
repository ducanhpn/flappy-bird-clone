extends ParallaxBackground

var scrolling_speed = 100
var ground_scale = 1.75

func _ready():
	DataStorage.ground_height = get_node("Ground/Ground").sprite_frames.get_frame_texture("default",0).get_size().y * ground_scale
	print(DataStorage.ground_height)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scroll_offset -= Vector2(delta * scrolling_speed,0)
