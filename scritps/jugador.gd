extends CharacterBody2D
# aqui se guarda la informacion del nodo "Personaje"
@onready var sprite = $Personaje

func _ready() -> void:
	# aqui es donde se cambian los colores con la informacion que esta en el diccionario
	sprite.material.set_shader_parameter("new_color1",jugador.jugador.color_del_cabello)
	sprite.material.set_shader_parameter("new_color2",jugador.jugador.color_de_la_camisa)
	sprite.material.set_shader_parameter("new_color3",jugador.jugador.color_del_pantalon)
	pass
