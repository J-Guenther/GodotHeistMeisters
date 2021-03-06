extends "res://Scripts/Door.gd"

var combination = [1,2,3]

func _ready():
	$CanvasLayer/NumberPad.combination = combination

func _input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and can_click:
		$CanvasLayer/NumberPad.popup_centered()


func _on_Door_body_exited(body):
	if body == Global.Player:
		can_click = false
		$CanvasLayer/NumberPad.hide()


func _on_NumberPad_combination_correct():
	open()
