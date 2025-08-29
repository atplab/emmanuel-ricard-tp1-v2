extends Node2D
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		print("bouton pressé")


# Exemple : touche -> son + animation
func _input(event):
	if event.is_action_pressed("ui_accept"):
		$AudioStreamPlayer.pitch_scale = rand_range(0.9, 1.1)
		$AudioStreamPlayer.play()
		$AnimationPlayer.play("pulse")
