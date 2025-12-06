class_name SodaSFX
extends AudioStreamPlayer

enum TYPES {
	UI,
	GENERAL,
}

var currentType: TYPES = TYPES.GENERAL


func _ready() -> void:
	connect("finished", audio_finished)


func set_type(type: TYPES) -> void:
	pass


func get_type() -> TYPES:
	return currentType


func audio_finished() -> void:
	queue_free()
