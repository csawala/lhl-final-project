$(document).on('turbolinks:load', () => {

  var top_position= jQuery('#get_started_carousel').offset().top;

  jQuery('#homepage_get_started').click(function() {
    jQuery('html, body').animate({scrollTop:top_position}, 'slow');
  		return false;
	});

});
