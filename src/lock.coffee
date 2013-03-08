# The definition of namespaces
w = window
w.lab = {} if not window.lab

# Internal reference to HTML element that represents the lock layer in DOM.
layer = null
defaultClass = 'lab-lock-layer'

# Provides methods to show and hide the lock layer.
w.lab.lock =
	# Shows a global lock layer.
	show: ->
		layer = factory.init() if not layer
		layer.fadeIn()
		this
	# Hides a global lock layer.
	hide: ->
		layer.fadeOut() if layer
		this
	# Adds a content to the layer. The given parameter should have a get method and a class property. This method should return content as HTML string.
	use: (template)->
		layer = factory.init() if not layer
		layer.empty()
		layer.attr('class', defaultClass)
		layer.addClass template.class
		layer.append template.get()
		this
	# Contains content templates that can be used to show them on the lock layer
	template: 
		loader:
			class: 'lab-ll-template-loader'
			get: ->
				'<div class=lab-ll-template-loader-content></div>'




# The factory that is used to generate the lock layer.
factory = 
	# Returns a lock layer element wrapped by jQuery.
	init: ->
		layer = $('<div>').appendTo 'body'
		layer.addClass defaultClass
