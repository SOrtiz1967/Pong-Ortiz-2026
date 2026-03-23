extends CharacterBody2D

# velocidad de las paletas
const velocidad = 300.0

#con el export en inspector puedo cambiarr la tecla para cad paleta
@export var tecla_arriba: String = "arriba1"
@export var tecla_abajo: String = "abajo1"

var posicion_x_fija = 0.0
func _ready() -> void:
	# guardar la posicion
	posicion_x_fija = global_position.x


func _physics_process(delta: float) -> void:
	# bloquear a la paleta en x
	global_position.x = posicion_x_fija
	velocity.x = 0 #anular cualquier cosa rara
	
	var direction = Input.get_axis(tecla_arriba, tecla_abajo)
	
	if direction:
		velocity.y = direction * velocidad
	else:
		velocity.y = move_toward(velocity.y, 0, velocidad)
		
	move_and_slide()
