extends Node2D
# aqui es donde se guardara los valores que selecciones en el selector de colores
var rgb:Color=Color(0,0,0,1)
# aqui se guardara la informacion del nodo personaje
@onready var c = $Personaje
# opciones que tenemos para personalizar
enum prendas {
	cabello,
	camisa,
	pantalon
}
# esta es la opcion seleccionada
var opcion_actual:prendas = prendas.cabello

func _ready() -> void:
	# como la opcion seleccionada por defecto es el del cabello
	# le pasamos los valores de colores a "rgb"
	rgb = jugador.jugador.color_del_cabello
	pass

func _process(delta: float) -> void:
	# actualiza el valor que se muestra en pantalla
	$R/value.text=str(rgb.r)
	$G/value.text=str(rgb.g)
	$B/value.text=str(rgb.b)
	# usamos la sentencia match, para las opciones
	match opcion_actual:
		# si la opcion del cabello esta activa
		prendas.cabello:
			# actualizamos los colores del jugador con los
			# datos que estan en rgb
			c.material.set_shader_parameter("new_color1",rgb)
			# guarda la informacion en un diccionario, para no perderla cuando cambiemos de escena
			jugador.jugador.color_del_cabello = rgb
			pass
		# si la opcion del camisa esta activa
		prendas.camisa:
			# actualizamos los colores del jugador con los
			# datos que estan en rgb
			c.material.set_shader_parameter("new_color2",rgb)
			# guarda la informacion en un diccionario, para no perderla cuando cambiemos de escena
			jugador.jugador.color_de_la_camisa = rgb
			pass
		# si la opcion del pantalon esta activa
		prendas.pantalon:
			# actualizamos los colores del jugador con los
			# datos que estan en rgb
			c.material.set_shader_parameter("new_color3",rgb)
			# guarda la informacion en un diccionario, para no perderla cuando cambiemos de escena
			jugador.jugador.color_del_pantalon = rgb
			pass
	pass

# si se presiona el boton disminuye el color
func _on_bajar_r_button_down() -> void:
	# resta 0.1 al color rojo guardado en rgb
	rgb.r-=0.1
	# esta funcion esta pendiente para que el valor no se pase de -0.0
	rgb.r=clampf(rgb.r,-0.0,1.0)
	pass
# si se presiona el boton aumenta el color
func _on_subir_r_button_down() -> void:
	# suma 0.1 al color rojo guardado en rgb
	rgb.r+=0.1
	# esta funcion esta pendiente para que el valor no se pase de 1.0
	rgb.r=clampf(rgb.r,-0.0,1.0)
	pass 
# si se presiona el boton disminuye el color
func _on_bajar_g_button_down() -> void:
	# resta 0.1 al color verde guardado en rgb
	rgb.g-=0.1
	# esta funcion esta pendiente para que el valor no se pase de -0.0
	rgb.g=clampf(rgb.g,-0.0,1.0)
	pass
# si se presiona el boton aumenta el color
func _on_subir_g_button_down() -> void:
	# suma 0.1 al color verde guardado en rgb
	rgb.g+=0.1
	# esta funcion esta pendiente para que el valor no se pase de 1.0
	rgb.g=clampf(rgb.g,-0.0,1.0)
	pass 
# si se presiona el boton disminuye el color
func _on_bajar_b_button_down() -> void:
	# resta 0.1 al color azul guardado en rgb
	rgb.b-=0.1
	# esta funcion esta pendiente para que el valor no se pase de -0.0
	rgb.b=clampf(rgb.b,-0.0,1.0)
	pass
# si se presiona el boton aumenta el color
func _on_subir_b_button_down() -> void:
	# suma 0.1 al color azul guardado en rgb
	rgb.b+=0.1
	# esta funcion esta pendiente para que el valor no se pase de -1.0
	rgb.b=clampf(rgb.b,-0.0,1.0)
	pass

# si presiona el boton cabello
func _on_cabello_pressed() -> void:
	# pasamos el color del cabello actual a la variable rgb
	rgb = jugador.jugador.color_del_cabello
	# y cambiamos la opcion seleccionada
	opcion_actual=prendas.cabello
	pass

# si presiona el boton camisa
func _on_camisa_pressed() -> void:
	# pasamos el color del camisa actual a la variable rgb
	rgb = jugador.jugador.color_de_la_camisa
	# y cambiamos la opcion seleccionada
	opcion_actual=prendas.camisa
	pass

# si presiona el boton pantalon
func _on_pantalon_pressed() -> void:
	# pasamos el color del pantalon actual a la variable rgb
	rgb = jugador.jugador.color_del_pantalon
	# y cambiamos la opcion seleccionada
	opcion_actual=prendas.pantalon
	pass

# si se selecciona pasa a la otra escena
func _on_continuar_pressed() -> void:
	# solo sirve para cambiar de escena
	get_tree().change_scene_to_file("res://scene/test.tscn")
	pass
