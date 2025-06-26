extends Node

var is_dragging = false

var player_position: Vector2 = Vector2(669,500)  # ou Vector3 se for 3D

var acertos_estados = {"bahia": false, "sergipe": false, "alagoas": false, "pernambuco": false, 
						"paraiba": false, "ceara": false, "piaui": false, "maranhao": false, "rn": false}

var contador_erros = {"bahia": 0, "sergipe": 0, "alagoas": 0, "pernambuco": 0, 
						"paraiba": 0, "ceara": 0, "piaui": 0, "maranhao": 0, "rn": 0}

var pontos = 0
