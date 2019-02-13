// NAVIGATION EFFECT
$(function(){
	$(window).scroll(function(){
		if( $(window).scrollTop() >= 130 ){
			$('.header-top')
				.removeClass('navbar-fixed-top')
				.css({transition: 'all 0.2s ease-in-out'})
				.addClass('navbar-static-top');

			$('.header_navbar')
				.css("margin-top", "0")
				.addClass('grey-nav-bg');
		} else{
			$('.header-top')
				.removeClass('navbar-static-top')
				.addClass('navbar-fixed-top')
				.css({transition: 'all 0.2s ease-in-out'});

			$('.header_navbar')
				.removeClass('grey-nav-bg')
				.css({marginTop: "8rem", transition: 'all 0.5s ease-in-out'});
		};
	});
});

// PUBLISH PROPERTY LISTING
$(function(){
	$('#publish_btn').click(function(e){
		e.preventDefault();
		$('#publish_form').submit();
	});
});