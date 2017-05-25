<?php

/**
 * WCFM plugin core
 *
 * Booking WC Booking Support
 *
 * @author 		WC Lovers
 * @package 	wcfm/core
 * @version   2.1.0
 */
 
class WCFM_WCBookings {
	
	public function __construct() {
    global $WCFM;
    
    if( wcfm_is_booking() ) {
    	
    	// Bookable Product Type
    	add_filter( 'wcfm_product_types', array( &$this, 'wcb_product_types' ), 20 );
    	
    	// Booking General Block
    	add_action( 'after_wcfm_products_manage_general', array( &$this, 'wcb_product_manage_general' ), 10, 2 );
    	
    	// Booking Product Manage View
    	add_action( 'end_wcfm_products_manage', array( &$this, 'wcb_wcfm_products_manage_form_load_views' ), 20 );
    }
  }
  
  /**
   * WC Booking Product Type
   */
  function wcb_product_types( $pro_types ) {
  	global $WCFM;
  	if ( current_user_can( 'manage_bookings' ) ) {
  		$pro_types['booking'] = __( 'Bookable product', 'woocommerce-bookings' );
  	}
  	
  	return $pro_types;
  }
  
  /**
   * WC Booking Product General Options
   */
  function wcb_product_manage_general( $product_id, $product_type ) {
  	global $WCFM, $WCFM;
  	
  	$bookable_product = new WC_Product_Booking( $product_id );
  	
  	$duration_type = $bookable_product->get_duration_type( 'edit' );
		$duration      = $bookable_product->get_duration( 'edit' );
		$duration_unit = $bookable_product->get_duration_unit( 'edit' );
		
		$min_duration = $bookable_product->get_min_duration( 'edit' );
		$max_duration = $bookable_product->get_max_duration( 'edit' );
		$enable_range_picker = $bookable_product->get_enable_range_picker( 'edit' ) ? 'yes' : 'no';
		
		$calendar_display_mode = $bookable_product->get_calendar_display_mode( 'edit' );
		$requires_confirmation = $bookable_product->get_requires_confirmation( 'edit' ) ? 'yes' : 'no';
		
		$user_can_cancel = $bookable_product->get_user_can_cancel( 'edit' ) ? 'yes' : 'no';
		$cancel_limit = $bookable_product->get_cancel_limit( 'edit' );
		$cancel_limit_unit = $bookable_product->get_cancel_limit_unit( 'edit' );
  	?>
  	<!-- collapsible Booking 1 -->
	  <div class="page_collapsible products_manage_downloadable booking" id="wcfm_products_manage_form_downloadable_head"><?php _e('Booking Options', 'woocommerce-bookings'); ?><span></span></div>
		<div class="wcfm-container booking">
			<div id="wcfm_products_manage_form_downloadable_expander" class="wcfm-content">
			  <?php
					$WCFM->wcfm_fields->wcfm_generate_form_field( array(  
						
						"_wc_booking_duration_type" => array('label' => __('Booking Duration', 'woocommerce-bookings') , 'type' => 'select', 'options' => array( 'fixed' => __( 'Fixed blocks of', 'woocommerce-bookings'), 'customer' => __( 'Customer defined blocks of', 'woocommerce-bookings' ) ), 'class' => 'wcfm-select wcfm_ele booking', 'label_class' => 'wcfm_title booking', 'value' => $duration_type ),
						"_wc_booking_duration" => array('type' => 'number', 'class' => 'wcfm-text wcfm_ele booking', 'label_class' => 'wcfm_title booking', 'value' => $duration ),
						"_wc_booking_duration_unit" => array('type' => 'select', 'options' => array( 'month' => __( 'Month(s)', 'woocommerce-bookings'), 'day' => __( 'Day(s)', 'woocommerce-bookings' ), 'hour' => __( 'Hour(s)', 'woocommerce-bookings' ), 'minute' => __( 'Minute(s)', 'woocommerce-bookings' ) ), 'class' => 'wcfm-select wcfm_ele booking', 'label_class' => 'wcfm_title booking', 'value' => $duration_unit ),
						"_wc_booking_min_duration" => array('label' => __('Minimum duration', 'woocommerce-bookings') , 'type' => 'number', 'class' => 'wcfm-text wcfm_ele duration_type_customer_ele booking', 'label_class' => 'wcfm_title duration_type_customer_ele booking', 'value' => $min_duration, 'hints' => __( 'The minimum allowed duration the user can input.', 'woocommerce-bookings' ), 'attributes' => array( 'min' => '', 'step' => '1' ) ),
						"_wc_booking_max_duration" => array('label' => __('Maximum duration', 'woocommerce-bookings') , 'type' => 'number', 'class' => 'wcfm-text wcfm_ele duration_type_customer_ele booking', 'label_class' => 'wcfm_title duration_type_customer_ele booking', 'value' => $max_duration, 'hints' => __( 'The maximum allowed duration the user can input.', 'woocommerce-bookings' ), 'attributes' => array( 'min' => '', 'step' => '1' ) ),
						"_wc_booking_enable_range_picker" => array('label' => __('Enable Calendar Range Picker?', 'woocommerce-bookings') , 'type' => 'checkbox', 'class' => 'wcfm-checkbox wcfm_ele duration_type_customer_ele booking', 'label_class' => 'wcfm_title duration_type_customer_ele booking', 'value' => 'yes', 'dfvalue' => $enable_range_picker, 'hints' => __( 'Lets the user select a start and end date on the calendar - duration will be calculated automatically.', 'woocommerce-bookings' ) ),
						"_wc_booking_calendar_display_mode" => array('label' => __('Calendar display mode', 'woocommerce-bookings') , 'type' => 'select', 'options' => array( '' => __( 'Display calendar on click', 'woocommerce-bookings'), 'always_visible' => __( 'Calendar always visible', 'woocommerce-bookings' ) ), 'class' => 'wcfm-select wcfm_ele booking', 'label_class' => 'wcfm_title booking', 'value' => $calendar_display_mode ),
						"_wc_booking_requires_confirmation" => array('label' => __('Requires confirmation?', 'woocommerce-bookings') , 'type' => 'checkbox', 'class' => 'wcfm-checkbox wcfm_ele booking', 'label_class' => 'wcfm_title booking', 'value' => 'yes', 'dfvalue' => $requires_confirmation, 'hints' => __( 'Check this box if the booking requires admin approval/confirmation. Payment will not be taken during checkout.', 'woocommerce-bookings' ) ),
						"_wc_booking_user_can_cancel" => array('label' => __('Can be cancelled?', 'woocommerce-bookings') , 'type' => 'checkbox', 'class' => 'wcfm-checkbox wcfm_ele booking', 'label_class' => 'wcfm_title booking', 'value' => 'yes', 'dfvalue' => $user_can_cancel, 'hints' => __( 'Check this box if the booking can be cancelled by the customer after it has been purchased. A refund will not be sent automatically.', 'woocommerce-bookings' ) ),
						"_wc_booking_cancel_limit" => array('label' => __('Booking can be cancelled until', 'woocommerce-bookings') , 'type' => 'number', 'class' => 'wcfm-text wcfm_ele can_cancel_ele booking', 'label_class' => 'wcfm_title can_cancel_ele booking', 'value' => $cancel_limit ),
						"_wc_booking_cancel_limit_unit" => array('type' => 'select', 'options' => array( 'month' => __( 'Month(s)', 'woocommerce-bookings'), 'day' => __( 'Day(s)', 'woocommerce-bookings' ), 'hour' => __( 'Hour(s)', 'woocommerce-bookings' ), 'minute' => __( 'Minute(s)', 'woocommerce-bookings' ) ), 'class' => 'wcfm-select wcfm_ele can_cancel_ele booking', 'label_class' => 'wcfm_title can_cancel_ele booking', 'desc_class' => 'can_cancel_ele booking', 'value' => $cancel_limit_unit, 'desc' => __( 'before the start date.', 'woocommerce-bookings' ) )
						
																															) );
			  
			  ?>
		  </div>
		</div>
		<!-- end collapsible Booking -->
		<div class="wcfm_clearfix"></div>
  	<?php
  }
  
  /**
   * WC Booking load views
   */
  function wcb_wcfm_products_manage_form_load_views( ) {
		global $WCFM;
	  
	 require_once( $WCFM->library->views_path . 'wcfm-view-wcbookings-products-manage.php' );
	}
}