extends Area2D
var Direction=0
var bandy=4
var bandx=4
var cont=0
var screen_size = get_viewport_rect().size
func _ready():
	pass
func _physics_process(delta):
	#var x= cos(deg2rad((Direction)))
	#var y= sin(deg2rad((Direction)))
	#var newPos= Vector2(x,y)*Velocidad*delta
	var xx=clamp(position.x,32,1024)
	var yy=clamp(position.y,32,720)
	if(position.y>32 or position.y<720):
		position.y+=bandy
	if(position.y>=720):
		bandy=-4
	if(position.y<= 30):
		bandy=4
	if(position.x>32 or position.x<(1024-32)):
		 position.x+=bandx	
	if(position.x>=(1024-32)):
		bandx=-4
	if(position.x<= 32):
		bandx=4
#func _on_Pelota_body_shape_entered(body_id, body, body_shape, local_shape):
	pass # Replace with function body.






func _on_Pelota_area_entered(area):
	cont+=1
	if(cont==1 ):
		#area.position.y+=1
		#bandy=-bandy
		#$CollisionShape2D.set_deferred("disabled", true)
		if(area.rotation_degrees==0):
			bandy=-bandy
		if(area.rotation_degrees==90):
			bandx=-bandx
		cont=0
		#print(get_viewport_rect().size)
	pass # Replace with function body.


func _on_Pelota_body_entered(body):
	if(body.rotation_degrees==0):
		bandy=-bandy
	if(body.rotation_degrees==90):
		bandx=-bandx
	pass # Replace with function body.


func _on_Pelota_area_exited(area):
	#bandy=-(-bandy)
	
	pass # Replace with function body.
