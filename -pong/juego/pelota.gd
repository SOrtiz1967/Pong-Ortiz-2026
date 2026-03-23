extends CharacterBody2D

var velocidad_original = 400.0 
var velocidad_pelota = 400.0 
#que la pelota arranque en diagonal
var direccion = Vector2(1, 1).normalized()

func _physics_process(delta: float) -> void:
	var colision = move_and_collide(direccion * velocidad_pelota * delta)
	
	if colision:
		var objeto_chocado = colision.get_collider()
		
		# si choca contra el techo o el piso, rebota normal
		if objeto_chocado.name == "techo" or objeto_chocado.name == "piso":
			direccion = direccion.bounce(colision.get_normal())
		else:
			# paleta
			
			if global_position.x < 575:
				direccion.x = abs(direccion.x) 
			else:
				direccion.x = -abs(direccion.x)
				
			# calcular la distancia al centro de la paleta
			var distancia_y = global_position.y - objeto_chocado.global_position.y
			
			#hacer el juego mas divertido y menos monotono
			direccion.y = distancia_y / 60.0
			
			
			direccion = direccion.normalized()
			#aumnetar la velocidad de la pelota en cada golpe	
			velocidad_pelota += 20.5
				
			#evtar que se quede pegada a la paleta
			global_position.x += sign(direccion.x) * 10.0

func reiniciar():
	# volver la pelota al medio para reiniciar despues de un punto
	global_position = Vector2(575, 325) 
	direccion.x = -direccion.x 
	#reiniciar la velocidad de la pelota
	velocidad_pelota = velocidad_original
	
	
	
