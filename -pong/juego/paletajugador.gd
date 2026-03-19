extends CharacterBody2D

# velocidad de las paletas
const velocidad = 300.0

#con el export en inspector puedo cambiarr la tecla para cad paleta
@export var tecla_arriba: String = "arriba1"
@export var tecla_abajo: String = "abajo1"


func _physics_process(delta: float) -> void:
	var direction =Input.get_axis(tecla_arriba, tecla_abajo) #esto me va a leer la w y la s ahora tambien las flechitas
	
	#if para mover la paleta cuano direction se active osea reciba una una entrada
	
	if direction:
		velocity.y= direction * velocidad
	else:
		velocity.y= move_toward(velocity.y,0,velocidad)
		
	move_and_slide() #funcion para mover al characterbody
