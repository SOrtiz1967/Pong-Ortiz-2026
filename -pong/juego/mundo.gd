extends Node2D
#inicializo los puntos de ambos jugadores en 0
var puntos_jugador_izq = 0
var puntos_jugador_der = 0


func _ready() -> void:
	pass 



func _process(delta: float) -> void:
	pass


func _on_arcoizq_body_entered(body: Node2D) -> void:
	
	
	if body.name == "pelota":
		puntos_jugador_der += 1 
		$PuntajeDer.text = str(puntos_jugador_der)
		print("Puntos Derecha: ", puntos_jugador_der) 
		body.call_deferred("reiniciar") 

func _on_arcoder_body_entered(body: Node2D) -> void:
	
	
	if body.name == "pelota":
		puntos_jugador_izq += 1 
		$PuntajeIzq.text = str(puntos_jugador_izq)
		print("Puntos izquierda: ", puntos_jugador_izq) 
		body.call_deferred("reiniciar")
