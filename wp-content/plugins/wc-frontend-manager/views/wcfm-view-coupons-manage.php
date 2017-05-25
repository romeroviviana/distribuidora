<?php
global $wp, $WCFM;

if( !current_user_can( 'edit_shop_coupons' ) ) {
	_e( "You don't have permission to access this page. Please contact site administrator for assistance.", $WCFM->text_domain );
	return;
}

$coupon_id = 0;
$title = '';
$description = '';
$discount_type = '';
$coupon_amount = 0;
$free_shipping = '';
$expiry_date = '';

if( isset( $wp->query_vars['wcfm-coupons-manage'] ) && !empty( $wp->query_vars['wcfm-coupons-manage'] ) ) {
	$coupon_post = get_post( $wp->query_vars['wcfm-coupons-manage'] );
	// Fetching Coupon Data
	if($coupon_post && !empty($coupon_post)) {
		$coupon_id = $wp->query_vars['wcfm-coupons-manage'];
		$wc_coupon = new WC_Coupon( $coupon_id );
		
		$title = $coupon_post->post_title;
		$description = $coupon_post->post_excerpt;
		$discount_type = get_post_meta( $coupon_id, 'discount_type', true);
		$coupon_amount = get_post_meta( $coupon_id, 'coupon_amount', true);
		$free_shipping = ( get_post_meta( $coupon_id, 'free_shipping', true) == 'yes' ) ? 'enable' : '';
		$expiry_date   = $wc_coupon->get_date_expires() ? $wc_coupon->get_date_expires()->date( 'Y-m-d' ) : '';
	}
}

do_action( 'before_wcfm_coupons_manage' );

/*
if( $allow_wp_admin_view = apply_filters( 'wcfm_allow_wp_admin_view', true ) ) {
	?>
	<a target="_blank" class="wcfm_wp_admin_view text_tip" href="<?php echo admin_url('post-new.php?post_type=shop_coupon'); ?>" data-tip="<?php _e( 'WP Admin View', $WCFM->text_domain ); ?>"><span class="wcicon-user2"></span></a>
	<?php
}
*/
?>

<div class="collapse wcfm-collapse">
  <div class="wcfm-page-headig">
		<span class="fa fa-gift"></span>
		<span class="wcfm-page-heading-text"><?php _e( 'Manage Coupon', $WCFM->text_domain ); ?></span>
	</div>
	<div class="wcfm-collapse-content">
		<form id="wcfm_coupons_manage_form" class="wcfm">
		
			<?php do_action( 'begin_wcfm_coupons_manage_form' ); ?>
			
			<!-- collapsible -->
			<div class="page_collapsible coupons_manage_general" id="wcfm_general_options"><?php _e('General', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container">
				<div id="coupons_manage_general_expander" class="wcfm-content">
						<?php
							$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'coupon_manager_fields_general', array(  "title" => array('label' => __('Title', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $title),
																																															"description" => array('label' => __('Description', $WCFM->text_domain) , 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele', 'label_class' => 'wcfm_title', 'value' => $description),
																																															"discount_type" => array('label' => __('Discount Type', $WCFM->text_domain), 'type' => 'select', 'options' => apply_filters( 'wcfm_coupon_types', array('percent' => __('Percentage discount', $WCFM->text_domain), 'fixed_cart' => __('Fixed Cart Discount', $WCFM->text_domain), 'fixed_product' => __('Fixed Product Discount', $WCFM->text_domain) ) ), 'class' => 'wcfm-select wcfm_ele', 'label_class' => 'wcfm_ele wcfm_title', 'value' => $discount_type),
																																															"coupon_amount" => array('label' => __('Coupon Amount', $WCFM->text_domain), 'type' => 'text', 'placeholder' => wc_format_localized_price( 0 ), 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_ele wcfm_title', 'value' => $coupon_amount),
																																															"free_shipping" => array('label' => __('Allow free shipping', $WCFM->text_domain) , 'type' => 'checkbox', 'class' => 'wcfm-checkbox wcfm_ele', 'value' => 'enable', 'label_class' => 'wcfm_title checkbox_title', 'hints' => __('Check this box if the coupon grants free shipping. The free shipping method must be enabled and be set to require "a valid free shipping coupon" (see the "Free Shipping Requires" setting).', $WCFM->text_domain), 'dfvalue' => $free_shipping),
																																															"expiry_date" => array('label' => __('Coupon expiry date', $WCFM->text_domain), 'type' => 'text', 'placeholder' => 'YYYY-MM-DD', 'class' => 'wcfm-text wcfm_ele wcfm_datepicker', 'label_class' => 'wcfm_ele wcfm_title', 'value' => $expiry_date),
																																															"coupon_id" => array('type' => 'hidden', 'value' => $coupon_id)
																																					) ) );
						?>
				</div>
			</div>
			<!-- end collapsible -->
			 
			<?php do_action( 'end_wcfm_coupons_manage_form' ); ?>
			
			<div class="wcfm-message" tabindex="-1"></div>
			
			<div id="wcfm_coupon_manager_submit">
				<input type="submit" name="submit-data" value="<?php if( current_user_can( 'publish_shop_coupons' ) ) { _e( 'Submit', $WCFM->text_domain ); } else { _e( 'Submit for Review', $WCFM->text_domain ); } ?>" id="wcfm_coupon_manager_submit_button" />
				<?php if( ( isset( $wp->query_vars['wcfm-coupons-manage'] ) && empty( $wp->query_vars['wcfm-coupons-manage'] ) ) || ( isset( $wp->query_vars['wcfm-coupons-manage'] ) && !empty( $wp->query_vars['wcfm-coupons-manage'] ) && ( get_post_status( $wp->query_vars['wcfm-coupons-manage'] ) == 'draft' ) ) ) { ?>
				<input type="submit" name="draft-data" value="<?php _e( 'Draft', $WCFM->text_domain ); ?>" id="wcfm_coupon_manager_draft_button" />
				<?php } ?>
			</div>
			<?php
			do_action( 'after_wcfm_coupons_manage' );
			?>
		</form>
	</div>
</div>