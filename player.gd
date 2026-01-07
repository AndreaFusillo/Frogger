extends Node2D


#tipizzo una variabile come vettore 2d

var direction : Vector2 = Vector2(0,0)
var speed : int = 5

func _physics_process(delta: float):
	
	if Input.is_action_pressed("right"):
		direction = Vector2.RIGHT
	
	if Input.is_action_pressed("left"):
		direction = Vector2.LEFT
	
	if Input.is_action_pressed("up"):
		direction = Vector2.UP
	
	if Input.is_action_pressed("down"):
		direction = Vector2.DOWN
	
	position += direction * speed
	
	
	
