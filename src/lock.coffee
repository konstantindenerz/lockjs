# The definition of namespaces
w = window
w.lab = {} if not window.lab

w.lab.lock =
	# Shows a global lock layer.
	show: ->
		layer = factory.init() if layer?
		console.log('show');
	# Hides a global lock layer.
	hide: ->
		console.log('hide');

# Internal reference to HTML element that represents the lock layer in DOM.
layer = null

# The factory that is used to generate the lock layer.
factory = 
	init: ->

