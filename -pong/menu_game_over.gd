extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func declarar_ganador(texto_ganador: String) -> void:
	 
	$Label.text = texto_ganador
	show()
	get_tree().paused = true 

func _on_button_pressed() -> void:
	
	get_tree().paused = false
	get_tree().reload_current_scene()
