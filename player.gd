extends Node2D


#tipizzo una variabile come vettore 2d

var direction : Vector2 = Vector2(0,0)
var speed : int = 5

func _physics_process(delta: float):
	
	direction = Input.get_vector("left","right","up","down")
	position += direction * speed
	
	if(Input.is_action_just_pressed("spazio")):
		print("Rone")

