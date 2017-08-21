# Import file "IMDB Shared Watchlist" (sizes and positions are scaled 1:2)
$ = Framer.Importer.load("imported/IMDB Shared Watchlist@2x")

movies = [$.wolverine, $.lincoln, $.vignelli, $.batman, $.revenant]

easing = "spring(100, 20, 20)"

$.delete.visible = true
$.watched.visible = true

#Setup scroll view
scrollView = ScrollComponent.wrap($.scroll)
scrollView.width = Screen.width
scrollView.height = Screen.height - $.nav.height
scrollView.y = $.nav.maxY
scrollView.speedX = 0
scrollView.backgroundColor = "rgba(26, 26, 26, 1)"
scrollView.scrollPoint =
    x: 0
    y: 10

scrollView.contentInset = bottom: 90

scrollView.content.draggable.directionLock = true
scrollView.content.draggable.directionLockThreshold = {x:5, y:5}

scrollView.scrollY = $.search.height

scrollView.content.draggable.on Events.DirectionLockDidStart, (event) ->
	for i in movies
		if scroll.direction = "down" or "up"
			i.draggable.enabled = false
		else if scroll.direction = "left" or "right"
			i.draggable.enabled = true

# Determine Scroll Edge Position

scrollView.on Events.ScrollEnd,  ->
	for i in movies
		i.draggable.enabled = true


for i in movies
	i.draggable.enabled = true
	i.draggable.vertical = false
	
	i.on Events.DragStart, ->
		this.draggable.propagateEvents = false
		$.actions.minY = this.y - 3 + $.search.height
		
	i.on Events.DragEnd, ->
		this.draggable.propagateEvents = true

	i.draggable.constraints =
		x: -210
		y: 0
		width: Screen.width + 420
		height: 200
	i.draggable.overdragScale = .1
	
	#Determine dragging direction
	i.on Events.DragEnd, ->
		if this.x > 150
			direction = 1	
		else if this.maxX < (Screen.width - 150)
			direction = -1
		else
			direction = 0
		this.animate
				properties:
					x: 200*direction
				curve: easing
				
	i.on Events.TouchStart, ->
		for i in $.list.children
			i.animate
				properties:
					x: 0
				curve: "ease-out"
				time: .2
	
	$.actions.on Events.Tap, ->
		for i in movies
			if i.x != 0
				layer = i
				i.animate
					properties:
						y: i.y - i.height
					curve: "ease-out"
					time: .15
				Utils.delay 0.5,
					-> layer.destroy()
				
			this.animate
				properties:
					y: this.y - this.height
				curve: "ease-out"
				time: .15		
				
			for j in movies
				if i.y > this.y
					i.animate
						properties:
							y: (i.y - i.height)
						curve: "ease-out"
						time: .2