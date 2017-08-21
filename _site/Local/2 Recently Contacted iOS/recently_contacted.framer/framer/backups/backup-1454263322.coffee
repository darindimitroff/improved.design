# Setup
$ = Framer.Importer.load("imported/source@2x")

curve = "bezier-curve(0.42, 0, 0.58, 1)"
transition = .28
delay1 = .15
delay2 = .5

$.messages.y = Screen.maxY
$.messenger.y = Screen.maxY
$.tweet.opacity = 0
$.tweet.ignoreEvents = true
contacts = [$.kalina, $.angel, $.Mom]
photos = [$.kalinaavatar, $.angelavatar, $.momavatar]
overlays = [$.messages, $.messenger, $.tweet, $.keyboard]
triggers = [$.messages, $.messenger, $.tweet]

for el in overlays
	el.visible = true

$.messages.y = Screen.height
$.messenger.y = Screen.height
$.tweet.scale = .95
$.keyboard.y = Screen.height



#Events
for el in contacts
	el.on Events.TouchEnd, ->
		$.sharesheet.animate
			properties:
				y: Screen.height
			time: transition
			curve: curve
			delay: delay1

for el in photos
	el.states.add
		normal:
			brightness: 100
		active:
			brightness: 75
	el.states.animationOptions =
    	time: .1
    	curve: curve
    			
	el.on Events.TouchStart, ->
		this.states.next("active", "normal")
	el.on Events.TouchEnd, ->
		this.states.next("active", "normal")

$.kalina.on Events.TouchEnd, ->
	$.messages.animate
		properties:
			y: 0
		curve: curve
		time: transition
		delay: delay2
		
$.Mom.on Events.TouchEnd, ->
	$.messenger.animate
		properties:
			y: 0
		curve: curve
		time: transition
		delay: delay2
		
$.angel.on Events.TouchEnd, ->
	$.tweet.animate
		properties:
			scale: 1
			opacity: 1
		curve: curve
		time: transition
		delay: delay2
	
	$.keyboard.animate
		properties:
			maxY: Screen.height
		curve: curve
		time: transition
		delay: delay2

$.messenger.on Events.TouchEnd, ->
	$.messenger.animate
		properties:
			y: Screen.height
		time: transition
		curve: curve
		delay: delay1
	$.sharesheet.animate
		properties:
			y: 414
		time: transition
		delay: delay2
		curve: curve
			
$.messages.on Events.TouchEnd, ->
	$.messages.animate
		properties:
			y: Screen.height
		time: transition
		curve: curve
		delay: delay1
	$.sharesheet.animate
		properties:
			y: 414
		time: transition
		delay: delay2
		curve: curve
		
$.dim.on Events.TouchEnd, ->
	$.tweet.animate
		properties:
			scale: .95
			opacity: 0
		time: transition
		curve: curve
		delay: delay1
	$.keyboard.animate
		properties:
			y: Screen.height
		time: transition
		curve: curve
		delay: delay1
	$.sharesheet.animate
		properties:
			y: 414
		time: transition
		delay: delay2
		curve: curve
		

