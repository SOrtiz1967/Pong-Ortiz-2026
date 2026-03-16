extends CharacterBody2D

# velocidad de las paletas
const velocidad = 300.0

func _physics_process(delta: float) -> void:
	var direction =Input.get_axis("arriba1", "abajo1") #esto me va a leer la w y la s
	
	#if para mover la paleta cuano direction se active osea reciba una w o s
	
	if direction:
		velocity.y= direction * velocidad
	else:
		velocity.y= move_toward(velocity.y,0,velocidad)
		
	move_and_slide() #funcion para mover al characterbody
