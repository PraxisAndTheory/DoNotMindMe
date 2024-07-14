extends Node

const MAIN = preload('res://scenes/main/main.tscn')
const LEVEL_MAP = preload("res://scenes/level_map/level_map.tscn")

func load_main_scene():
	get_tree().change_scene_to_packed(MAIN)

func load_game_scene():
	get_tree().change_scene_to_packed(LEVEL_MAP)
