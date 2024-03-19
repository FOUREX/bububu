extends Area2D

var player_in_area = false

func _ready() -> void:
	connect("body_entered", _on_body_entered)
	connect("body_exited", _on_body_exited)

func _process(delta):
	if player_in_area:
		pass

func _on_body_entered(body: Node) -> void:
	player_in_area = true
	$Nope.visible = true
	$Nop.play()

func _on_body_exited(body: Node) -> void:
	player_in_area = false
	$Nope.visible = false
	$Nop.stop()
