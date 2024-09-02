extends Node2D
var velocidad=300
var oldPosicion;
var timer=0
var timer2=0
var cont=0
var torretax
func _ready():
	#$RichTextLabel.text="pijaaaaaaaa"
	#______________________________________________
	var barra = load("res://nave.tscn").instance()
	add_child(barra)
	barra.global_position.x=$Position2D.position.x+64
	barra.global_position.y=$Position2D.position.y+600
	#______________________________________________
	var pelota = load("res://Pelota.tscn").instance()
	add_child(pelota)
	#pelota.global_position.x=64
	#pelota.global_position.y=600
	#______________________________________________
	
	#______________________________________________
	"""torretax = load("res://torreta.tscn").instance()
	add_child(torretax)
	torretax.obj=pelota
	torretax.global_position.x=$Position2D.position.x+320
	torretax.global_position.y=$Position2D.position.y+675"""
	#______________________________________________
	"""var bloc = load("res://Bloke.tscn").instance()
	add_child(bloc)
	bloc.global_position.x=$Position2D.position.x+64
	bloc.global_position.y=$Position2D.position.y+100"""
	"""for i in 8: 
		var blok = load("res://enemigo01.tscn").instance()
		add_child(blok)
		if(i<=3):
		 blok.global_position.x+=256+(96*i)
		 blok.global_position.y=96
		if(i>3):
		 blok.global_position.x+=-128+(96*i)
		 blok.global_position.y=256"""
		#+10*sin(deg2rad(position.x)*5)
	 # position.y=128+10*sin(deg2rad(position.x)*5)
	  
	#pelota.global_position.x=64
	#pelota.global_position.y=600
	#______________________________________________
	
	pass
	
func _nivel01():
	for j in 12:
			var ladrillo = load("res://Bloke.tscn").instance()
			add_child(ladrillo)
			ladrillo.texto=String(j)
			#ladrillo.nombre="dos"#NegPos"cont360"#dos
			#ladrillo.valor=i
			#ladrillo.cont=cont
			if(j<=3):
				ladrillo.rotation_degrees=0
				ladrillo.global_position.x+=256+((96+0)*j)#96105
				ladrillo.global_position.y=96
			if(j>3&&j<8):
				ladrillo.rotation_degrees=0
				ladrillo.global_position.x+=-128+((96+0)*j)
				ladrillo.global_position.y=256
			if(j==8):
				ladrillo.get_node("CollisionShape2D").rotation_degrees=90
				print(ladrillo.get_node("CollisionShape2D").rotation_degrees)
				ladrillo.rotation_degrees=90
				ladrillo.global_position.x=-160+((96+0)*j)#96105
				ladrillo.global_position.y=128
			if(j==9):
				ladrillo.get_node("CollisionShape2D").rotation_degrees=90
				print(ladrillo.get_node("CollisionShape2D").rotation_degrees)
				ladrillo.rotation_degrees=90
				ladrillo.global_position.x=-256+((96+0)*j)#96105
				ladrillo.global_position.y=224
			if(j==10):
				ladrillo.get_node("CollisionShape2D").rotation_degrees=90
				print(ladrillo.get_node("CollisionShape2D").rotation_degrees)
				ladrillo.rotation_degrees=90
				ladrillo.global_position.x=-768+((96+0)*j)#96105
				ladrillo.global_position.y=128
			if(j==11):
				ladrillo.get_node("CollisionShape2D").rotation_degrees=90
				print(ladrillo.get_node("CollisionShape2D").rotation_degrees)
				ladrillo.rotation_degrees=90
				ladrillo.global_position.x=-864+((96+0)*j)#96105
				ladrillo.global_position.y=224
	pass
func _nivel02():
	pass
func _physics_process(delta):
	
	if(timer==0):
		print("pija")
		for i in 0: 
			var blok = load("res://enemigo01.tscn").instance()
			add_child(blok)
			blok.nombre="dos"#NegPos"cont360"#dos
			blok.valor=i
			blok.cont=cont
			if(i<=3):
				blok.global_position.x+=256+(96*i)
				blok.global_position.y=96*i
				
			if(i>3):
				blok.global_position.x+=-128+(96*i)
				blok.global_position.y=256      
		timer=1
	if(timer2==0):
		_nivel01()
		"""for j in 8:
			var ladrillo = load("res://Bloke.tscn").instance()
			add_child(ladrillo)
			#ladrillo.nombre="dos"#NegPos"cont360"#dos
			#ladrillo.valor=i
			#ladrillo.cont=cont
			if(j<=3):
				ladrillo.global_position.x+=256+((96+0)*j)#96105
				ladrillo.global_position.y=96
			if(j>3):
				ladrillo.global_position.x+=-128+((96+0)*j)
				ladrillo.global_position.y=256"""
		timer2=1
	pass
	
