extends Node

const GASPS = [
	preload("res://sounds/gasp1.wav"),
	preload("res://sounds/gasp2.wav"),
	preload("res://sounds/gasp3.wav"),
]

const PICKUPS = [
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup1.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup2.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup3.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup4.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup5.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup6.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup7.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup8.wav"),
	preload("res://sounds/Positive Sounds/sfx_sounds_powerup9.wav")
]

const LASER = [
	preload("res://sounds/sfx_wpn_laser2.wav")
]


func get_random_sound_from_list(sound_list):
	return sound_list.pick_random()


func play_gasp(player: AudioStreamPlayer2D):
	player.stream = get_random_sound_from_list(GASPS)
	player.play()


func play_laser(player: AudioStreamPlayer2D):
	player.stream = get_random_sound_from_list(LASER)
	player.play()
	
	
func get_random_pickup_sound():
	return get_random_sound_from_list(PICKUPS)
