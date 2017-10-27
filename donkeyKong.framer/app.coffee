# Variables
dWidth = 375
dHeight = 667

Library.z = 1
Menu.z = 4
Camera.z = 5

sampleImage.rotation = 90
sampleImage.width = 501
sampleImage.height = dWidth
sampleImage.x = 0
sampleImage.y = 44
sampleImage.z = 6

overlay = new Layer
	z: 3
	width: 375
	height: 667
	backgroundColor: "rgba(0,0,0,0.79)"
	opacity: 0.00
	
overFlow = new Layer
	z: 2
	x: 331
	y: 108
	width: 44
	height: 96
	opacity: 0.00
	
	
Menu.placeBefore(overlay)
	
overFlow.onTap ->
	overlay.animate
		opacity: 1.00
		options:
			time: 0.5
	Menu.animate
		y: 348
		options: 
			time: 0.5
			
overlay.onTap ->
	overlay.animate
		opacity: 0.00
		options: 
			time: 0.5
	Menu.animate
		y: 668
		options: 
			time: 0.5
			
syncButton.onTap ->
	sound = new Audio("sounds/Alert3.m4a")
	sound.play()
	Menu.animate
		y: 668
		options: 
			time: 0
	overlay.animate
		opacity: 0
	Camera.animate
		x: 0
		options:
			time: 0	
			

