/*
 * sfDelay - Suckerfish CSS menu with JS delay.
 *
 * Copyright (c) 2008 Peter Ryan (peter-ryan.co.uk)
 * This function is free for anyone to use, modify and redistribute.
 *
 * $Id: sfdelay.js 19 2008-05-19 15:33:48Z pryan $
 */

/* http://simonwillison.net/2004/May/26/addLoadEvent/ */
function addLoadEvent(func) {
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			if (oldonload) {
				oldonload();
			}
			func();
		}
	}
};


sfHover = function() {
	var timeout = 400;
	var cssClass = "sfhover";

	var queue = [];
	var reCSS = new RegExp("\\b" + cssClass + "\\b");
	var sfEls = document.getElementById("nav").getElementsByTagName("li");
	for (var i=0; i<sfEls.length; i++) {
  
		// mouseover and mouseout handlers for regular mouse based interface.
		sfEls[i].onmouseover = function() {
			queueFlush();
			this.className += " " + cssClass;
		}
		sfEls[i].onmouseout = function() {
			queue.push([setTimeout(queueTimeout, timeout), this]);
		}

		// focus and blur handlers for keyboard based navigation.
		sfEls[i].onfocus = function() {
			queueFlush();
			this.className += " " + cssClass;
		}
		sfEls[i].onblur = function() {
			queue.push([setTimeout(queueTimeout, timeout), this]);
		}

		// click event handler needed for tablet type interfaces (e.g. Apple iPhone).
		sfEls[i].onclick = function(e) {
			if (this.className.search(reCSS) == -1) {
				// CSS not set, so clear all sibling (and decendants) menus, and then set CSS on this menu...
				var elems = this.parentNode.getElementsByTagName("li");
				for (var i=0; i<elems.length; i++) {
					elems[i].className = elems[i].className.replace(reCSS, "");
				}
				this.className += " " + cssClass;
			} else {
				// CSS already set, so clear all decendant menus and then this menu...
				var elems = this.getElementsByTagName("li");
				for (var i=0; i<elems.length; i++) {
					elems[i].className = elems[i].className.replace(reCSS, "");
				}
				this.className = this.className.replace(reCSS, "");
			}
			if (e && e.stopPropagation)
				e.stopPropagation();
			else
				window.event.cancelBubble = true;
		}
	}

	queueFlush = function () {
		while (queue.length) {
			clearTimeout(queue[0][0]);
			queueTimeout();
		}
	}

	queueTimeout = function() {
		if (queue.length) {
			var el = queue.shift()[1];
			el.className = el.className.replace(reCSS, "");
		}
	}
}
addLoadEvent(sfHover);
