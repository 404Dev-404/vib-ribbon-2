extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.body_entered.connect(_on_body_entered)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if has_meta("scenePointer") and body is CharacterBody2D:
		get_tree().change_scene_to_file(get_meta("scenePointer"))
	else:
		print("Scene pointer not assigned. Quitting.")
		get_tree().quit()
