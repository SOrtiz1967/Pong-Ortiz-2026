extends Node2D
#inicializo los puntos de ambos jugadores en 0
var puntos_jugador_izq = 0
var puntos_jugador_der = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_arcoizq_body_entered(body: Node2D) -> void:
	
	
	if body.name == "pelota":
		puntos_jugador_der += 1 
		print("Puntos Derecha: ", puntos_jugador_der) 
		body.call_deferred("reiniciar") 

func _on_arcoder_body_entered(body: Node2D) -> void:
	
	
	if body.name == "pelota":
		puntos_jugador_izq += 1 
		print("Puntos izquierda: ", puntos_jugador_izq) 
		body.call_deferred("reiniciar")
