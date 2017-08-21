# Import file "Source" (sizes and positions are scaled 1:2)
$ = Framer.Importer.load("imported/Source@2x")

cycler = Utils.cycle([0, 1])
	
$.PurpleLabels.opacity = 0

$.lock.on Events.Click, ->
	$.PurpleLabels.animate