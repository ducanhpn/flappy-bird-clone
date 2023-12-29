extends Node2D

var detect_area
var detect_area_height
var pipe_up
var pipe_down
var total_height

# Called when the node enters the scene tree for the first time.
func _ready():
	detect_area = get_node("DetectArea2D")
	detect_area_height = detect_area.get_child(0).get_shape().get_rect().size.y
	pipe_up = get_node("PipeUp")
	pipe_down = get_node("PipeDown")
	total_height = DataStorage.screen_size.y - DataStorage.ground_height
	calculate_pipe()
	print(total_height)


func _on_area_2d_body_entered(body):
	if body.name == "Player":
		DataStorage.score += 1
		


#calculate, scale, set position for pupes
func calculate_pipe():
	var default_height = get_node("PipeDown/AnimatedSprite2D").sprite_frames.get_frame_texture("default",0).get_size().y
	var total_pipes_height = total_height - detect_area_height
	#randomize height of 2 pipes
	var rng = RandomNumberGenerator.new()
	var pipe_down_height = rng.randf_range(0.3, 0.7) * total_pipes_height
	var pipe_up_height = total_pipes_height - pipe_down_height
	#calculate scale value for 2 pipes
	var vertical_scale_scalar_pipe_down = pipe_down_height / default_height
	var vertical_scale_scalar_pipe_up = pipe_up_height / default_height
	#scale pipes
	pipe_down.apply_scale(Vector2(1,vertical_scale_scalar_pipe_down))
	pipe_up.apply_scale(Vector2(1,vertical_scale_scalar_pipe_up))
	#set pipe's position
	pipe_up.position.y = pipe_up_height / 2
	pipe_down.position.y = total_height - (pipe_down_height / 2)
	#set detect area position
	detect_area.position.y = pipe_up_height + detect_area_height /2
	print(pipe_down_height)
