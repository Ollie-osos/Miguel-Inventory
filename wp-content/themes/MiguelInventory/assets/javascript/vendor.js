// EventListener | CC0 | github.com/jonathantneal/EventListener

this.Element && Element.prototype.attachEvent && !Element.prototype.addEventListener && (function () {
	function addToPrototype(name, method) {
		Window.prototype[name] = HTMLDocument.prototype[name] = Element.prototype[name] = method;
	}

	// add
	addToPrototype("addEventListener", function (type, listener) {
		var
		target = this,
		listeners = target.addEventListener.listeners = target.addEventListener.listeners || {},
		typeListeners = listeners[type] = listeners[type] || [];

		// if no events exist, attach the listener
		if (!typeListeners.length) {
			target.attachEvent("on" + type, typeListeners.event = function (event) {
				var documentElement = target.document && target.document.documentElement || target.documentElement || { scrollLeft: 0, scrollTop: 0 };

				// polyfill w3c properties and methods
				event.currentTarget = target;
				event.pageX = event.clientX + documentElement.scrollLeft;
				event.pageY = event.clientY + documentElement.scrollTop;
				event.preventDefault = function () { event.returnValue = false };
				event.relatedTarget = event.fromElement || null;
				event.stopImmediatePropagation = function () { immediatePropagation = false; event.cancelBubble = true };
				event.stopPropagation = function () { event.cancelBubble = true };
				event.target = event.srcElement || target;
				event.timeStamp = +new Date;

				var plainEvt = {};
				for (var i in event) {
					plainEvt[i] = event[i];
				}

				// create an cached list of the master events list (to protect this loop from breaking when an event is removed)
				for (var i = 0, typeListenersCache = [].concat(typeListeners), typeListenerCache, immediatePropagation = true; immediatePropagation && (typeListenerCache = typeListenersCache[i]); ++i) {
					// check to see if the cached event still exists in the master events list
					for (var ii = 0, typeListener; typeListener = typeListeners[ii]; ++ii) {
						if (typeListener == typeListenerCache) {
							typeListener.call(target, plainEvt);

							break;
						}
					}
				}
			});
		}

		// add the event to the master event list
		typeListeners.push(listener);
	});

	// remove
	addToPrototype("removeEventListener", function (type, listener) {
		var
		target = this,
		listeners = target.addEventListener.listeners = target.addEventListener.listeners || {},
		typeListeners = listeners[type] = listeners[type] || [];

		// remove the newest matching event from the master event list
		for (var i = typeListeners.length - 1, typeListener; typeListener = typeListeners[i]; --i) {
			if (typeListener == listener) {
				typeListeners.splice(i, 1);

				break;
			}
		}

		// if no events exist, detach the listener
		if (!typeListeners.length && typeListeners.event) {
			target.detachEvent("on" + type, typeListeners.event);
		}
	});

	// dispatch
	addToPrototype("dispatchEvent", function (eventObject) {
		var
		target = this,
		type = eventObject.type,
		listeners = target.addEventListener.listeners = target.addEventListener.listeners || {},
		typeListeners = listeners[type] = listeners[type] || [];

		try {
			return target.fireEvent("on" + type, eventObject);
		} catch (error) {
			if (typeListeners.event) {
				typeListeners.event(eventObject);
			}

			return;
		}
	});

	// CustomEvent
	Object.defineProperty(Window.prototype, "CustomEvent", {
		get: function () {
			var self = this;

			return function CustomEvent(type, eventInitDict) {
				var event = self.document.createEventObject(), key;

				event.type = type;
				for (key in eventInitDict) {
					if (key == 'cancelable'){
						event.returnValue = !eventInitDict.cancelable;
					} else if (key == 'bubbles'){
						event.cancelBubble = !eventInitDict.bubbles;
					} else if (key == 'detail'){
						event.detail = eventInitDict.detail;
					}
				}
				return event;
			};
		}
	});

	// ready
	function ready(event) {
		if (ready.interval && document.body) {
			ready.interval = clearInterval(ready.interval);

			document.dispatchEvent(new CustomEvent("DOMContentLoaded"));
		}
	}

	ready.interval = setInterval(ready, 1);

	window.addEventListener("load", ready);
})();

(!this.CustomEvent || typeof this.CustomEvent === "object") && (function() {
	// CustomEvent for browsers which don't natively support the Constructor method
	this.CustomEvent = function CustomEvent(type, eventInitDict) {
		var event;
		eventInitDict = eventInitDict || {bubbles: false, cancelable: false, detail: undefined};

		try {
			event = document.createEvent('CustomEvent');
			event.initCustomEvent(type, eventInitDict.bubbles, eventInitDict.cancelable, eventInitDict.detail);
		} catch (error) {
			// for browsers which don't support CustomEvent at all, we use a regular event instead
			event = document.createEvent('Event');
			event.initEvent(type, eventInitDict.bubbles, eventInitDict.cancelable);
			event.detail = eventInitDict.detail;
		}

		return event;
	};
})();

var gulp = require('gulp');
var del = require('del');

gulp.task('clean', function () {
  return del([
    './.DS_Store',
    './src/.DS_Store',
    './src/**/.DS_Store',
    './gulpfile.js/.DS_Store',
    './gulpfile.js/**/.DS_Store'
  ]);
});

var gulp = require('gulp');
var browserSync = require('browser-sync').create();

gulp.task('default', ['clean', 'scripts'], function() {
  browserSync.init({
    server: {
      baseDir: './'
    }
  });

  gulp.watch(['./what-input.js', './polyfills/*.js'], ['scripts']).on('change', browserSync.reload);
});

var requireDir = require('require-dir');

// Require all tasks in gulpfile.js/tasks, including subfolders
requireDir('./tasks', { recurse: true });

// Production steps of ECMA-262, Edition 5, 15.4.4.14
// Reference: http://es5.github.io/#x15.4.4.14
if (!Array.prototype.indexOf) {
  Array.prototype.indexOf = function(searchElement, fromIndex) {

    var k;

    // 1. Let O be the result of calling ToObject passing
    //    the this value as the argument.
    if (this == null) {
      throw new TypeError('"this" is null or not defined');
    }

    var O = Object(this);

    // 2. Let lenValue be the result of calling the Get
    //    internal method of O with the argument "length".
    // 3. Let len be ToUint32(lenValue).
    var len = O.length >>> 0;

    // 4. If len is 0, return -1.
    if (len === 0) {
      return -1;
    }

    // 5. If argument fromIndex was passed let n be
    //    ToInteger(fromIndex); else let n be 0.
    var n = +fromIndex || 0;

    if (Math.abs(n) === Infinity) {
      n = 0;
    }

    // 6. If n >= len, return -1.
    if (n >= len) {
      return -1;
    }

    // 7. If n >= 0, then Let k be n.
    // 8. Else, n<0, Let k be len - abs(n).
    //    If k is less than 0, then let k be 0.
    k = Math.max(n >= 0 ? n : len - Math.abs(n), 0);

    // 9. Repeat, while k < len
    while (k < len) {
      // a. Let Pk be ToString(k).
      //   This is implicit for LHS operands of the in operator
      // b. Let kPresent be the result of calling the
      //    HasProperty internal method of O with argument Pk.
      //   This step can be combined with c
      // c. If kPresent is true, then
      //    i.  Let elementK be the result of calling the Get
      //        internal method of O with the argument ToString(k).
      //   ii.  Let same be the result of applying the
      //        Strict Equality Comparison Algorithm to
      //        searchElement and elementK.
      //  iii.  If same is true, return k.
      if (k in O && O[k] === searchElement) {
        return k;
      }
      k++;
    }
    return -1;
  };
}

this.Element&&Element.prototype.attachEvent&&!Element.prototype.addEventListener&&function(){function e(e,t){Window.prototype[e]=HTMLDocument.prototype[e]=Element.prototype[e]=t}function t(e){t.interval&&document.body&&(t.interval=clearInterval(t.interval),document.dispatchEvent(new CustomEvent("DOMContentLoaded")))}e("addEventListener",function(e,t){var n=this,r=n.addEventListener.listeners=n.addEventListener.listeners||{},a=r[e]=r[e]||[];a.length||n.attachEvent("on"+e,a.event=function(e){var t=n.document&&n.document.documentElement||n.documentElement||{scrollLeft:0,scrollTop:0};e.currentTarget=n,e.pageX=e.clientX+t.scrollLeft,e.pageY=e.clientY+t.scrollTop,e.preventDefault=function(){e.returnValue=!1},e.relatedTarget=e.fromElement||null,e.stopImmediatePropagation=function(){c=!1,e.cancelBubble=!0},e.stopPropagation=function(){e.cancelBubble=!0},e.target=e.srcElement||n,e.timeStamp=+new Date;var r={};for(var o in e)r[o]=e[o];for(var i,o=0,l=[].concat(a),c=!0;c&&(i=l[o]);++o)for(var s,u=0;s=a[u];++u)if(s==i){s.call(n,r);break}}),a.push(t)}),e("removeEventListener",function(e,t){for(var n,r=this,a=r.addEventListener.listeners=r.addEventListener.listeners||{},o=a[e]=a[e]||[],i=o.length-1;n=o[i];--i)if(n==t){o.splice(i,1);break}!o.length&&o.event&&r.detachEvent("on"+e,o.event)}),e("dispatchEvent",function(e){var t=this,n=e.type,r=t.addEventListener.listeners=t.addEventListener.listeners||{},a=r[n]=r[n]||[];try{return t.fireEvent("on"+n,e)}catch(o){return void(a.event&&a.event(e))}}),Object.defineProperty(Window.prototype,"CustomEvent",{get:function(){var e=this;return function(t,n){var r,a=e.document.createEventObject();a.type=t;for(r in n)"cancelable"==r?a.returnValue=!n.cancelable:"bubbles"==r?a.cancelBubble=!n.bubbles:"detail"==r&&(a.detail=n.detail);return a}}}),t.interval=setInterval(t,1),window.addEventListener("load",t)}(),(!this.CustomEvent||"object"==typeof this.CustomEvent)&&function(){this.CustomEvent=function(e,t){var n;t=t||{bubbles:!1,cancelable:!1,detail:void 0};try{n=document.createEvent("CustomEvent"),n.initCustomEvent(e,t.bubbles,t.cancelable,t.detail)}catch(r){n=document.createEvent("Event"),n.initEvent(e,t.bubbles,t.cancelable),n.detail=t.detail}return n}}(),Array.prototype.indexOf||(Array.prototype.indexOf=function(e,t){var n;if(null==this)throw new TypeError('"this" is null or not defined');var r=Object(this),a=r.length>>>0;if(0===a)return-1;var o=+t||0;if(Math.abs(o)===1/0&&(o=0),o>=a)return-1;for(n=Math.max(o>=0?o:a-Math.abs(o),0);a>n;){if(n in r&&r[n]===e)return n;n++}return-1});
var gulp = require('gulp');
var plumber = require('gulp-plumber');
var notify = require('gulp-notify');
var uglify = require('gulp-uglify');
var rename = require('gulp-rename');
var concat = require('gulp-concat');
var header = require('gulp-header');
var pkg = require('../../package.json');
var banner = ['/**',
  ' * <%= pkg.name %> - <%= pkg.description %>',
  ' * @version v<%= pkg.version %>',
  ' * @link <%= pkg.homepage %>',
  ' * @license <%= pkg.license %>',
  ' */',
  ''].join('\n');

gulp.task('scripts-uglify', function() {
  return gulp.src(['./what-input.js'])
    .pipe(plumber({errorHandler: notify.onError("Error: <%= error.message %>")}))
    .pipe(uglify())
    .pipe(rename('what-input.min.js'))
    .pipe(header(banner, { pkg : pkg } ))
    .pipe(gulp.dest('./'))
    .pipe(notify('Scripts uglify task complete'));
});

gulp.task('scripts-ie8', function() {
  return gulp.src(['./polyfills/ie8/*.js'])
    .pipe(plumber({errorHandler: notify.onError("Error: <%= error.message %>")}))
    .pipe(concat('lte-IE8.js'))
    .pipe(uglify())
    .pipe(gulp.dest('./'))
    .pipe(notify('IE8 scripts task complete'));
});

gulp.task('scripts', ['scripts-uglify', 'scripts-ie8']);

window.whatInput = (function() {

  'use strict';

  /*
    ---------------
    variables
    ---------------
  */

  // array of actively pressed keys
  var activeKeys = [];

  // cache document.body
  var body;

  // boolean: true if touch buffer timer is running
  var buffer = false;

  // the last used input type
  var currentInput = null;

  // `input` types that don't accept text
  var nonTypingInputs = [
    'button',
    'checkbox',
    'file',
    'image',
    'radio',
    'reset',
    'submit'
  ];

  // detect version of mouse wheel event to use
  // via https://developer.mozilla.org/en-US/docs/Web/Events/wheel
  var mouseWheel = detectWheel();

  // list of modifier keys commonly used with the mouse and
  // can be safely ignored to prevent false keyboard detection
  var ignoreMap = [
    16, // shift
    17, // control
    18, // alt
    91, // Windows key / left Apple cmd
    93  // Windows menu / right Apple cmd
  ];

  // mapping of events to input types
  var inputMap = {
    'keydown': 'keyboard',
    'keyup': 'keyboard',
    'mousedown': 'mouse',
    'mousemove': 'mouse',
    'MSPointerDown': 'pointer',
    'MSPointerMove': 'pointer',
    'pointerdown': 'pointer',
    'pointermove': 'pointer',
    'touchstart': 'touch'
  };

  // add correct mouse wheel event mapping to `inputMap`
  inputMap[detectWheel()] = 'mouse';

  // array of all used input types
  var inputTypes = [];

  // mapping of key codes to a common name
  var keyMap = {
    9: 'tab',
    13: 'enter',
    16: 'shift',
    27: 'esc',
    32: 'space',
    37: 'left',
    38: 'up',
    39: 'right',
    40: 'down'
  };

  // map of IE 10 pointer events
  var pointerMap = {
    2: 'touch',
    3: 'touch', // treat pen like touch
    4: 'mouse'
  };

  // touch buffer timer
  var timer;


  /*
    ---------------
    functions
    ---------------
  */

  // allows events that are also triggered to be filtered out for `touchstart`
  function eventBuffer() {
    clearTimer();
    setInput(event);

    buffer = true;
    timer = window.setTimeout(function() {
      buffer = false;
    }, 650);
  }

  function bufferedEvent(event) {
    if (!buffer) setInput(event);
  }

  function unBufferedEvent(event) {
    clearTimer();
    setInput(event);
  }

  function clearTimer() {
    window.clearTimeout(timer);
  }

  function setInput(event) {
    var eventKey = key(event);
    var value = inputMap[event.type];
    if (value === 'pointer') value = pointerType(event);

    // don't do anything if the value matches the input type already set
    if (currentInput !== value) {
      var eventTarget = target(event);
      var eventTargetNode = eventTarget.nodeName.toLowerCase();
      var eventTargetType = (eventTargetNode === 'input') ? eventTarget.getAttribute('type') : null;

      if (
        (// only if the user flag to allow typing in form fields isn't set
        !body.hasAttribute('data-whatinput-formtyping') &&

        // only if currentInput has a value
        currentInput &&

        // only if the input is `keyboard`
        value === 'keyboard' &&

        // not if the key is `TAB`
        keyMap[eventKey] !== 'tab' &&

        // only if the target is a form input that accepts text
        (
           eventTargetNode === 'textarea' ||
           eventTargetNode === 'select' ||
           (eventTargetNode === 'input' && nonTypingInputs.indexOf(eventTargetType) < 0)
        )) || (
          // ignore modifier keys
          ignoreMap.indexOf(eventKey) > -1
        )
      ) {
        // ignore keyboard typing
      } else {
        switchInput(value);
      }
    }

    if (value === 'keyboard') logKeys(eventKey);
  }

  function switchInput(string) {
    currentInput = string;
    body.setAttribute('data-whatinput', currentInput);

    if (inputTypes.indexOf(currentInput) === -1) inputTypes.push(currentInput);
  }

  function key(event) {
    return (event.keyCode) ? event.keyCode : event.which;
  }

  function target(event) {
    return event.target || event.srcElement;
  }

  function pointerType(event) {
    if (typeof event.pointerType === 'number') {
      return pointerMap[event.pointerType];
    } else {
      return (event.pointerType === 'pen') ? 'touch' : event.pointerType; // treat pen like touch
    }
  }

  // keyboard logging
  function logKeys(eventKey) {
    if (activeKeys.indexOf(keyMap[eventKey]) === -1 && keyMap[eventKey]) activeKeys.push(keyMap[eventKey]);
  }

  function unLogKeys(event) {
    var eventKey = key(event);
    var arrayPos = activeKeys.indexOf(keyMap[eventKey]);

    if (arrayPos !== -1) activeKeys.splice(arrayPos, 1);
  }

  function bindEvents() {
    body = document.body;

    // pointer events (mouse, pen, touch)
    if (window.PointerEvent) {
      body.addEventListener('pointerdown', bufferedEvent);
      body.addEventListener('pointermove', bufferedEvent);
    } else if (window.MSPointerEvent) {
      body.addEventListener('MSPointerDown', bufferedEvent);
      body.addEventListener('MSPointerMove', bufferedEvent);
    } else {

      // mouse events
      body.addEventListener('mousedown', bufferedEvent);
      body.addEventListener('mousemove', bufferedEvent);

      // touch events
      if ('ontouchstart' in window) {
        body.addEventListener('touchstart', eventBuffer);
      }
    }

    // mouse wheel
    body.addEventListener(mouseWheel, bufferedEvent);

    // keyboard events
    body.addEventListener('keydown', unBufferedEvent);
    body.addEventListener('keyup', unBufferedEvent);
    document.addEventListener('keyup', unLogKeys);
  }


  /*
    ---------------
    utilities
    ---------------
  */

  // detect version of mouse wheel event to use
  // via https://developer.mozilla.org/en-US/docs/Web/Events/wheel
  function detectWheel() {
    return mouseWheel = 'onwheel' in document.createElement('div') ?
      'wheel' : // Modern browsers support "wheel"

      document.onmousewheel !== undefined ?
        'mousewheel' : // Webkit and IE support at least "mousewheel"
        'DOMMouseScroll'; // let's assume that remaining browsers are older Firefox
  }


  /*
    ---------------
    init

    don't start script unless browser cuts the mustard,
    also passes if polyfills are used
    ---------------
  */

  if (
    'addEventListener' in window &&
    Array.prototype.indexOf
  ) {

    // if the dom is already ready already (script was placed at bottom of <body>)
    if (document.body) {
      bindEvents();

    // otherwise wait for the dom to load (script was placed in the <head>)
    } else {
      document.addEventListener('DOMContentLoaded', bindEvents);
    }
  }


  /*
    ---------------
    api
    ---------------
  */

  return {

    // returns string: the current input type
    ask: function() { return currentInput; },

    // returns array: currently pressed keys
    keys: function() { return activeKeys; },

    // returns array: all the detected input types
    types: function() { return inputTypes; },

    // accepts string: manually set the input type
    set: switchInput
  };

}());

/**
 * what-input - A global utility for tracking the current input method (mouse, keyboard or touch).
 * @version v2.0.1
 * @link https://github.com/ten1seven/what-input
 * @license MIT
 */
window.whatInput=function(){"use strict";function e(){o(),i(event),v=!0,L=window.setTimeout(function(){v=!1},650)}function t(e){v||i(e)}function n(e){o(),i(e)}function o(){window.clearTimeout(L)}function i(e){var t=u(e),n=b[e.type];if("pointer"===n&&(n=a(e)),y!==n){var o=d(e),i=o.nodeName.toLowerCase(),c="input"===i?o.getAttribute("type"):null;!f.hasAttribute("data-whatinput-formtyping")&&y&&"keyboard"===n&&"tab"!==M[t]&&("textarea"===i||"select"===i||"input"===i&&h.indexOf(c)<0)||E.indexOf(t)>-1||r(n)}"keyboard"===n&&s(t)}function r(e){y=e,f.setAttribute("data-whatinput",y),-1===k.indexOf(y)&&k.push(y)}function u(e){return e.keyCode?e.keyCode:e.which}function d(e){return e.target||e.srcElement}function a(e){return"number"==typeof e.pointerType?x[e.pointerType]:"pen"===e.pointerType?"touch":e.pointerType}function s(e){-1===m.indexOf(M[e])&&M[e]&&m.push(M[e])}function c(e){var t=u(e),n=m.indexOf(M[t]);-1!==n&&m.splice(n,1)}function p(){f=document.body,window.PointerEvent?(f.addEventListener("pointerdown",t),f.addEventListener("pointermove",t)):window.MSPointerEvent?(f.addEventListener("MSPointerDown",t),f.addEventListener("MSPointerMove",t)):(f.addEventListener("mousedown",t),f.addEventListener("mousemove",t),"ontouchstart"in window&&f.addEventListener("touchstart",e)),f.addEventListener(l,t),f.addEventListener("keydown",n),f.addEventListener("keyup",n),document.addEventListener("keyup",c)}function w(){return l="onwheel"in document.createElement("div")?"wheel":void 0!==document.onmousewheel?"mousewheel":"DOMMouseScroll"}var f,m=[],v=!1,y=null,h=["button","checkbox","file","image","radio","reset","submit"],l=w(),E=[16,17,18,91,93],b={keydown:"keyboard",keyup:"keyboard",mousedown:"mouse",mousemove:"mouse",MSPointerDown:"pointer",MSPointerMove:"pointer",pointerdown:"pointer",pointermove:"pointer",touchstart:"touch"};b[w()]="mouse";var L,k=[],M={9:"tab",13:"enter",16:"shift",27:"esc",32:"space",37:"left",38:"up",39:"right",40:"down"},x={2:"touch",3:"touch",4:"mouse"};return"addEventListener"in window&&Array.prototype.indexOf&&(document.body?p():document.addEventListener("DOMContentLoaded",p)),{ask:function(){return y},keys:function(){return m},types:function(){return k},set:r}}();