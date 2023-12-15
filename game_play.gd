extends Node2D

var score = 0
var scoreLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	scoreLabel = get_node("ScoreLabel")
	scoreLabel.text = "Score: " + str(score)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	scoreLabel.text = "Score: " + str(score)
	
	
