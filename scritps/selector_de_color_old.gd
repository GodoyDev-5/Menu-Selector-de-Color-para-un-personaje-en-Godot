extends Node2D

var r:float=0.0
var b:float=0.0
var g:float=0.0

@onready var c = $Personaje

enum prendas {
	cabello,
	camisa,
	pantalon
}

var opcion_actual:prendas = prendas.cabello

func _process(delta: float) -> void:
	$R/value.text=str(r)
	$G/value.text=str(g)
	$B/value.text=str(b)
	match opcion_actual:
		prendas.cabello:
			c.material.set_shader_parameter("new_color2",Color(r,b,g,255))
			pass
		prendas.camisa:
			c.material.set_shader_parameter("new_color0",Color(r,b,g,255))
			pass
		prendas.pantalon:
			c.material.set_shader_parameter("new_color1",Color(r,b,g,255))
			pass
	pass


func _on_bajar_r_button_down() -> void:
	r-=0.1
	pass # Replace with function body.


func _on_subir_r_button_down() -> void:
	r+=0.1
	pass # Replace with function body.

func _on_bajar_g_button_down() -> void:
	g-=0.1
	pass # Replace with function body.


func _on_subir_g_button_down() -> void:
	g+=0.1
	pass # Replace with function body.

func _on_bajar_b_button_down() -> void:
	b-=0.1
	pass # Replace with function body.


func _on_subir_b_button_down() -> void:
	b+=0.1
	pass # Replace with function body.


func _on_cabello_pressed() -> void:
	opcion_actual=prendas.cabello
	pass # Replace with function body.


func _on_camisa_pressed() -> void:
	opcion_actual=prendas.camisa
	pass # Replace with function body.


func _on_pantalon_pressed() -> void:
	opcion_actual=prendas.pantalon
	pass # Replace with function body.
