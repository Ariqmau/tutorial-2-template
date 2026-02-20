extends Area2D

func _on_body_entered(body):
	if body.name == "BlueShip" or body.name == "RedShip":
		get_tree().reload_current_scene()
