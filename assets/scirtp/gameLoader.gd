extends Spatial

var score1 = 0
var score2 = 0
var gameScene = preload("res://assets/testScene.tscn")

func _ready():
	get_node("sceneRoot").queue_free()
	add_child(gameScene)

func _process(delta):
	if Input.is_action_just_pressed("reload"):
		get_child(1).queue_free()
		add_child(gameScene)

func _on_sceneRoot_player1():
	score1 = score1 + 1
	print(score1)
	get_child(1).queue_free()
	add_child(gameScene)
func _on_sceneRoot_player2():
	score2 = score2 + 1
	print(score2)
	get_child(1).queue_free()
	add_child(gameScene)

func reloadGameField():
	pass
