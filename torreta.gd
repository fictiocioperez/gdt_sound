extends KinematicBody2D
#var pelota:=$game/Pelota
onready var _ray_cast=$RayCast2D
onready var _cooldown_timer=$Timer
var _proyectile_scene=preload("res://proyectil.tscn")
var _cant_fire= true
var obj
var cont_key=0
var cont=0
var gg

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.rotation_degrees=90
	gg=get_parent().get_node("Label")
	
	pass # Replace with function body.
func _spawn_proyectile():
	var direction= Vector2.RIGHT.rotated(global_rotation)
	var proyectile= _proyectile_scene.instance()
	proyectile.angulo=rotation_degrees
	proyectile.direction=direction
	proyectile.global_position= _ray_cast.global_position
	proyectile.add_collision_exception_with(self)
	add_child(proyectile)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var xx=floor(rand_range(0,10))/2
	gg.text= String(xx)
	#randi_range ( int from, int to )
	cont+=1
	cont=clamp(cont,0,360)
	if(cont>=360):
		cont=0
		
	if(xx==0):
		print(xx)
		_spawn_proyectile()
		xx=0
	look_at(obj.global_position)
	if _cant_fire and _ray_cast.is_colliding():
		_spawn_proyectile()
		_cant_fire=false
		_cooldown_timer.start()
	if Input.is_key_pressed(KEY_J):
		_spawn_proyectile()
	"""if Input.is_key_pressed(KEY_J)&&cont_key==0 :
		var shot=load("res://proyectil.tscn").instance()
		get_parent().add_child(shot)
		shot.position=position
		shot.rotation=rotation
		#shot.angle_to
		#move_toward(shot.position.x,shot.position.y-400,100*delta)
		#shot.global_position=Vector2.RIGHT*delta*200
		#position.move_toward(shot.position,delta)
	if !Input.is_key_pressed(KEY_J) :
		cont_key=0"""
	if Input.is_key_pressed(KEY_J):
		_spawn_proyectile()
	pass

