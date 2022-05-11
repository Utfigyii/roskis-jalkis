extends Spatial

var score1 = 0
var score2 = 0
var gameScene = preload("res://assets/testScene.tscn")
signal updateScore()

func _ready():
	reloadGameField()
	print("game reloaded")

func _process(delta):
	if Input.is_action_just_pressed("reload"):
		reloadGameField()
		print("should spwan")
	if Input.is_action_just_pressed("exit"):
		get_tree().quit()

func _on_sceneRoot_player1():
	score1 = score1 + 1
	print(score1)
func _on_sceneRoot_player2():
	score2 = score2 + 1
	print(score2)
	
func reloadGameField():
	var gameSceneInstance = gameScene.instance()
	if get_child(0).has_method("removeThis"):
		get_child(0).removeThis()
	elif get_child(1).has_method("removeThis"):
		get_child(1).removeThis()
	else:
		get_child(2).removeThis()
	add_child(gameSceneInstance)
	print(Vector2(score1, score2))
	emit_signal("updateScore")
