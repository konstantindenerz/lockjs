lockjs
======

JavaScript library that provides a lock layer to lock user interface in browser.

### Dependencies

* jQuery 

### Build

You can use the build/build.sh script to build the CoffeeScript files. The result will be deployed in the build/lock.js file.

### Import

* ```<link rel='stylesheet' type='text/css' href='{path_to_css}/lockjs.css'/>```
* ```<script type='text/javascript' src='{path_to_javascript}/lock.js'></script>```

### Usage

* Show lock layer:
```lab.lock.show();```

* Hide lock layer:
```lab.lock.hide();```


* Usage of default template:
```lab.lock.use(lab.lock.template.loader);```
