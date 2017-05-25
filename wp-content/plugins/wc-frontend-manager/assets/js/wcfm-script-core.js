$wcfm_products_table = '';

function initiateTip() {
  jQuery('.img_tip, .text_tip').each(function() {
		jQuery(this).qtip({
			content: jQuery(this).attr('data-tip'),
			position: {
				my: 'top center',
				at: 'bottom center',
				viewport: jQuery(window)
			},
			show: {
				event: 'mouseover',
				solo: true,
			},
			hide: {
				inactive: 6000,
				fixed: true
			},
			style: {
				classes: 'qtip-dark qtip-shadow qtip-rounded qtip-wcfm-css qtip-wcfm-core-css'
			}
		});
	});
}

function GetURLParameter(sParam) {
	var sPageURL = window.location.search.substring(1);
	var sURLVariables = sPageURL.split('&');
	for (var i = 0; i < sURLVariables.length; i++) {
		var sParameterName = sURLVariables[i].split('=');
		if (sParameterName[0] == sParam) {
			return sParameterName[1];
		}
	}
}

jQuery(document).ready(function($) {
	initiateTip();
	
	// Delete Product
	$('.wcfm_delete_product').each(function() {
		$(this).click(function(event) {
			event.preventDefault();
			var rconfirm = confirm("Are you sure and want to delete this 'Product'?\nYou can't undo this action ...");
			if(rconfirm) deleteWCFMProduct($(this));
			return false;
		});
	});
	
	function deleteWCFMProduct(item) {
		jQuery('.products').block({
			message: null,
			overlayCSS: {
				background: '#fff',
				opacity: 0.6
			}
		});
		var data = {
			action : 'delete_wcfm_product',
			proid : item.data('proid')
		}	
		jQuery.ajax({
			type:		'POST',
			url: woocommerce_params.ajax_url,
			data: data,
			success:	function(response) {
				window.location = wcfm_messages.shop_url;
			}
		});
	}
});