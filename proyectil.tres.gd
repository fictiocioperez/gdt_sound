extends KinematicBody2D
var velocidad = Vector2.ZERO
var direction := Vector2.RIGHT
var speed:=600
var angulo
var ind

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_as_toplevel(true)
	direction=direction.normalized()
	look_at(direction + global_position)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var v=direction*speed*delta
	var c:= move_and_collide(v)
	rotation_degrees=angulo+90
	if c and c.collider:
		queue_free()
	if position.x<0 or position.x>1080:
		queue_free()
	if position.y<0 or position.y>880:
		queue_free()
	#var c:= move_and_
	#position+=Vector2.UP*delta*1200
	#rotation_degrees+=1
	#position+=
	#rotation_degrees=ind
	#position+=Vector2(1,0)*$Sprite.look_at(Vector3(1,0,0),Vector3(0,0,0))
	#position+=position*ind
	#print(v)
	#print($Sprite.transform.x.angle_to(Vector2(0,1)))
	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	pass # Replace with function body.
