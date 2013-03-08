# The definition of namespaces
w = window
w.lab = {} if not window.lab

# Internal reference to HTML element that represents the lock layer in DOM.
layer = null

# Provides methods to show and hide the lock layer.
w.lab.lock =
	# Shows a global lock layer.
	show: ->
		layer = factory.init() if not layer
		layer.show()
		this
	# Hides a global lock layer.
	hide: ->
		layer.hide() if layer
		this



# The factory that is used to generate the lock layer.
factory = 
	# Returns a lock layer element wrapped by jQuery.
	init: ->
		layer = $('<div>').appendTo 'body'
		layer.addClass 'lab-lock-layer'
