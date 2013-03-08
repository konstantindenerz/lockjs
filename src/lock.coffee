# Definition of namespaces
w = window
w.lab = {} if not window.lab
w.lab.lock =
	show: ->
		console.log('show');
	hide: ->
		console.log('hide');

