
// hamburger-nav
$(function() {
	const $body = $("body");
	const $container = $(".container");
	const $openBtn = $(".h-open-btn");
	const $closeBtn = $(".h-close-btn");
	const $menu = $(".hamburger_menu");
	const $overlay = $(".overlay");

	$("a[href$='#']").on("click", function(e) {
		e.preventDefault();
	});

	$openBtn.on("click", function() {
		if ($body.hasClass("open_status")) {
			toggleMenu("close");
		} else {
			toggleMenu("open");
		}
	});

	$closeBtn.on("click", function() {
		if ($body.hasClass("open_status")) {
			toggleMenu("close");
		} else {
			toggleMenu("open");
		}
	});

	$overlay.on("click", function() {
		if ($body.hasClass("open_status")) {
			toggleMenu("close");
		}
	});

	function toggleMenu(str) {
		if (str == "open") {
			$body.addClass("open_status");
			$menu.addClass("on");
		}
		if (str == "close") {
			$body.removeClass("open_status");
			$menu.removeClass("on");
		}
	}
});

// acodian-nav

$(function() {
	$(".sub").hide();

	$(".main").on("click", function() {
		if (!($(this).hasClass("on"))) {
			$(".main").removeClass("on");
			$(this).addClass("on");
			$(".sub").slideUp("fast");
			$(this).next().slideDown("fast");
		} else {
			$(this).removeClass("on");
			$(this).next().slideUp("fast");
		}
	});
})
