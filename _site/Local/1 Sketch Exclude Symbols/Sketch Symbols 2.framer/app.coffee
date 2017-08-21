# Import file "Source" (sizes and positions are scaled 1:2)
$ = Framer.Importer.load("imported/Source@2x")

cycler = Utils.cycle([0, 1])
	
$.PurpleLabels.opacity = 0

$.lockUp.states.add
	Closed:
		y: $.lockUp.y
		
	Open:
		y: $.lockUp.y - 3
		
$.PurpleLabels.states.add
	Invisible:
		opacity: 0
		
	Visible:
		opacity: 1
		
$.lockUp.states.animationOptions =
	time: .15
	curve: "ease-in-out"
	
$.PurpleLabels.states.animationOptions =
	time: .15
	curve: "ease-in-out"

$.lock.on Events.Click, ->
	$.PurpleLabels.states.next("Visible", "Invisible")
	$.lockUp.states.next("Open", "Closed")
			