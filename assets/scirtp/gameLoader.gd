extends Spatial

var score1 = 0
var score2 = 0
var gameScene = preload("res://assets/testScene.tscn")

func _ready():
	reloadGameField()

func _process(delta):
	if Input.is_action_just_pressed("reload"):
		reloadGameField()
		print("should spwan")

func _on_sceneRoot_player1():
	score1 = score1 + 1
	print(score1)
	reloadGameField()
func _on_sceneRoot_player2():
	score2 = score2 + 1
	print(score2)
	reloadGameField()
	
func reloadGameField():
	var gameSceneInstance = gameScene.instance()
	if get_child(0).has_method("removeThis"):
		get_child(0).removeThis()
	else:
		get_child(1).removeThis()
	add_child(gameSceneInstance)
