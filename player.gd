extends CharacterBody2D


#tipizzo una variabile come vettore 2d

var direction : Vector2 = Vector2(0,0)
var speed : int = 200


func _physics_process(delta: float):
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	animation()
	move_and_slide()
	
	
func animation():
	#if direction ritorna ture se il vettore direction contiene valori diversi da 0 (il player si muove e quindi parte l'animazione)
	if direction:
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = "left"
		else:
			$AnimatedSprite2D.animation = 'up' if direction.y < 0 else 'down'
			
	else:
		$AnimatedSprite2D.frame = 0
