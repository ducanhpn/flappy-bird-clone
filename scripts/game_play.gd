extends Node2D

var score_label

# Called when the node enters the scene tree for the first time.
func _ready():
	score_label = get_node("ScoreLabel")
	score_label.text = "Score: " + str(DataStorage.score)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score_label.text = "Score: " + str(DataStorage.score)
	
	
