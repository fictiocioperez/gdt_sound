extends Area2D
var cont=0
var band=0
var array=[]
var scna=load("res://bullet.tscn")
func _ready():
	pass # Replace with function body.


export (int) var speed = 200
export (float) var rotation_speed = 1.5

var velocity = Vector2()
var rotation_dir = 0

func get_input():
	rotation_dir = 0
	velocity = Vector2()
	if Input.is_key_pressed(KEY_D):
		rotation_dir += 1
	if Input.is_key_pressed(KEY_A):
		rotation_dir -= 1
	if Input.is_key_pressed(KEY_S):
		velocity = Vector2(-speed, 0).rotated(rotation)
	if Input.is_key_pressed(KEY_W):
		velocity = Vector2(speed, 0).rotated(rotation)
	#if Input.is_key_pressed(KEY_J):

"""func inicio():
	shot=load("res://bullet.tscn").instance()
	get_parent().add_child(shot)
	shot.global_position=$Position2D.global_position
	rotation_degrees+=10
	shot.global_rotation_degrees=rotation_degrees
	#shot.global_position=position
	shot.global_position.x=10*cont+sin(90) 
	shot.global_position.y=10*cont+cos(90) 
	
	shot.target.x=200+sin(90) 
	shot.target.y=200+cos(90)
	
	
pass"""

func _physics_process(delta):
	if(rotation_degrees>=360):
		rotation_degrees=0
	get_input()
	
	if(cont>=6):rotation_degrees=0
	if(cont<6):
		var shot=scna.instance()
		
		#shot[cont]=load("res://bullet.tscn").instance()
		get_parent().add_child(shot)
		array.append(shot)
		array[cont].global_position=$Position2D.global_position
		rotation_degrees+=60
		array[cont].global_rotation_degrees=rotation_degrees-60
		#shot.global_position=position
		#shot.global_position.x=0.1*cont+sin(90) 
		#shot.global_position.y=0.1*cont+cos(90) 
		#array[cont].target.x=100*cont+sin(60)*cont 
		#array[cont].target.y=100*cont+cos(60)*cont
		#array[cont].target.x=position.x
		#array[cont].target.y=position.y
		array[cont].index=rotation_degrees+1
		array[cont].target.x=0#floor(position.x)
		array[cont].target.y=0# floor(position.y)
		cont+=1
		cont=clamp(cont,0,6)
		#rotation += rotation_dir * rotation_speed * delta
		#velocity = move_and_slide(velocity)
