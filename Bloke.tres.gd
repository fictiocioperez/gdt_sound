extends Area2D
export (Texture) var DefaultSprite
export (Texture) var BlokenSprite
export (Texture) var BlokenSprite2
var texto=""
var strength=10
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.texture=DefaultSprite;
	pass # Replace with function body.
func hit():
	strength-=1
	#position.x-=0.01*(randi()%10)
	if(strength>5 && strength<=10):
		$Sprite.texture=BlokenSprite;
	if(strength<=5):
		$Sprite.texture=BlokenSprite2;
	#position.y-=0.1*(rand_range(-10, 10))
	#$Sprite.texture=BlokenSprite
	if(strength<0):
		queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Bloke_area_entered(area):
	
	#$CollisionShape2D.set_deferred("disabled", true)
	#$CollisionShape2D.disabled = false
	hit()
	
	if(area.is_in_group("mplayers")):
		area.queue_free()
		position.y+=1
	#$CollisionShape2D.set_deferred("disabled", true)
	pass # Replace with function body.


func _on_Bloke_body_entered(body):
	hit()
	$Sprite.modulate = Color(1, 0, 0)
	pass # Replace with function body.


func _on_Bloke_area_exited(area):
	$Sprite.modulate = Color(1, 0, 0)
	#$CollisionShape2D.set_deferred("disabled", false)
	pass # Replace with function body.
func _physics_process(delta):
	$label.text=texto
	pass
