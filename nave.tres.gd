extends Area2D
var velocidad=400
var balax=load("res://balaPlayer.tscn")
var cont_key=0
func _ready():
	pass
func _physics_process(delta):
	#oldPosicion=position
	#cont_key=0
	if Input.is_key_pressed(KEY_D):
		position.x=position.x+(velocidad*delta)
	if Input.is_key_pressed(KEY_A) :
		position.x=position.x-(velocidad*delta)
	if Input.is_key_pressed(KEY_J)&&cont_key==0 :
		var shot=balax.instance()
		get_parent().add_child(shot)
		shot.nombre="YBala"
		shot.global_position.x=position.x
		shot.global_position.y=position.y-32
		$AudioStreamPlayer.playing=true
		cont_key=-1
	if Input.is_key_pressed(KEY_J)==false :
		cont_key=0
	pass
	position.x=clamp(position.x,0,1024-128)
