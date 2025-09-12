extends Node2D
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		print("bouton pressé")
		
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		$playerwalking.play("walk")
		$Background/audio_marcher.play()
	else:
		if Input.is_action_pressed("ui_left"):
			$playerwalking.play("walk_left")
			$Background/audio_marcher.play()
		else:
			$playerwalking.play("idle")
			
	
	
		
	if Input.is_action_pressed("ui_up"):
		$playerjump.play("playerjump")
		$Background/Saut_son.play()
	else:
		$playerjump.play("idle_jump")
		
	if Input.is_action_pressed("ui_page_down"):
		$"red ennemy".play("Red_walk")
	else:
		$"red ennemy".play("Red_Idle")
		
	if Input.is_action_pressed("ui_page_up"):
		$"red ennemy".play("Red_Idle")
	else:
		$"Flying bee".play("Bee_flying")
		$"Flying bee/Flying_bee".play("Bee_flying")
		$coin_bronze.play("default")
		$coin_bronze/coin_bronze2.play("default")
		$coin_bronze/coin_bronze3.play("default")
		$coin_bronze/coin_bronze4.play("default")
		$coin_bronze/coin_bronze5.play("default")
		$coin_bronze/coin_bronze6.play("default")
		$coin_bronze/coin_bronze.play("default")
		$coin_argent/coin_argent2.play("default")
		$coin_argent.play("default")
		$spring.play("default")
		$spring/spring.play("default")
		$spring/spring2.play("default")

func _on_button_pressed() -> void:
	$Background.play()
	$Background/audio_marcher/Button.visible = false
