# Import file "Source" (sizes and positions are scaled 1:2)
$ = Framer.Importer.load("imported/Source@2x")

cycler = Utils.cycle([0, 1])
	
for index, layer of $.PurpleLabels.subLayers
	layer.on Events.Click, ->
		(this).opacity = cycler()