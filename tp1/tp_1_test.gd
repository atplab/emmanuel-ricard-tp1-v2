extends Node2D
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		print("bouton pressé")
		
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		$playerwalking.play("walk")
	else:
		$playerwalking.play("idle")


# Exemple : touche -> son + animation
