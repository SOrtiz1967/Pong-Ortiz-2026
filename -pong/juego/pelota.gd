extends CharacterBody2D

var velocidad_pelota = 200.0
# Vector2(1, 1) hace que la pelota arranque moviéndose en diagonal
var direccion = Vector2(1, 1).normalized()

func _physics_process(delta: float) -> void:
	# move_and_collide mueve la pelota y nos avisa si choca
	# A diferencia de move_and_slide, aquí multiplicamos por delta
	var colision = move_and_collide(direccion * velocidad_pelota * delta)
	
	if colision:
		# Si la pelota choca (contra una paleta o el techo/piso), rebota
		direccion = direccion.bounce(colision.get_normal())
