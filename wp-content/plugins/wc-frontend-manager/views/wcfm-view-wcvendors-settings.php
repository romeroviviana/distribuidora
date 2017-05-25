<?php
/**
 * WCFM plugin view
 *
 * WCFM WC Vendors Settings View
 *
 * @author 		WC Lovers
 * @package 	wcfm/view
 * @version   2.1.1
 */

global $WCFM;

$user_id = get_current_user_id();

$shop_name = get_user_meta( $user_id, 'pv_shop_name', true );
$logo = get_user_meta( $user_id, '_wcv_store_icon_id', true );
$paypal = get_user_meta( $user_id, 'pv_paypal', true );
$seller_info = get_user_meta( $user_id, 'pv_seller_info', true );
$shop_description = get_user_meta( $user_id, 'pv_shop_description', true );
$_wcv_company_url = get_user_meta( $user_id, '_wcv_company_url', true );
$_wcv_store_phone = get_user_meta( $user_id, '_wcv_store_phone', true );

$logo_image_url = wp_get_attachment_image_src( $logo, 'full' );
if ( !empty( $logo_image_url ) ) {
	$logo_image_url = $logo_image_url[0];
}

if( WCFM_Dependencies::wcvpro_plugin_active_check() ) {
	if( WCFM_Dependencies::wcfmu_plugin_active_check() ) {
		$banner = get_user_meta( $user_id, '_wcv_store_banner_id', true );
		$banner_image_url = wp_get_attachment_image_src( $banner, 'full' );
		if ( !empty( $banner_image_url ) ) {
			$banner_image_url = $banner_image_url[0];
		}
		
		$_wcv_company_url = get_user_meta( $user_id, '_wcv_company_url', true );
		$_wcv_store_phone = get_user_meta( $user_id, '_wcv_store_phone', true );
		$_wcv_vacation_mode = ( get_user_meta( $user_id, '_wcv_vacation_mode', true ) ) ? get_user_meta( $user_id, '_wcv_vacation_mode', true ) : 'no';
		$_wcv_vacation_mode_msg = get_user_meta( $user_id, '_wcv_vacation_mode_msg', true );
		//$_wcv_shipping_policy = get_user_meta( $user_id, '_wcv_shipping_policy', true );
		//$_wcv_shipping_return_policy = get_user_meta( $user_id, '_wcv_shipping_return_policy', true );
	}
}

$is_marketplece = wcfm_is_marketplace();
		
?>

<div class="collapse wcfm-collapse" id="">
  <div class="wcfm-page-headig">
		<span class="fa fa-cogs"></span>
		<span class="wcfm-page-heading-text"><?php _e( 'Settings', $WCFM->text_domain ); ?></span>
	</div>
	<div class="wcfm-collapse-content">
		<?php do_action( 'before_wcfm_wcvendors_settings' ); ?>
		<form id="wcfm_settings_form" class="wcfm">
	
			<?php do_action( 'begin_wcfm_wcvendors_settings_form' ); ?>
			
			<!-- collapsible -->
				<div class="page_collapsible" id="wcfm_settings_form_style_head">
					<?php _e('Store Settings', $WCFM->text_domain); ?><span></span>
				</div>
				<div class="wcfm-container">
					<div id="wcfm_settings_form_style_expander" class="wcfm-content">
						<?php
							$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'wcfm_wcvendors_settings_fields_general', array(
																																																"logo" => array('label' => __('Logo', $WCFM->text_domain) , 'type' => 'upload', 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_title', 'prwidth' => 150, 'value' => $logo_image_url ),
																																																"shop_name" => array('label' => __('Shop Name', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $shop_name, 'hints' => __( 'Your shop name is public and must be unique.', $WCFM->text_domain ) ),
																																																"paypal" => array('label' => __('Paypal Email', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $paypal, 'hints' => __( 'Your PayPal address is used to send you your commission.', $WCFM->text_domain ) ),
																																																"seller_info" => array('label' => __('Seller Info', $WCFM->text_domain) , 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele', 'label_class' => 'wcfm_title', 'value' => $seller_info, 'hints' => __( 'This is displayed on each of your products.', $WCFM->text_domain ) ),
																																																"shop_description" => array('label' => __('Shop Description', $WCFM->text_domain) , 'type' => 'wpeditor', 'class' => 'wcfm-editor wcfm_ele', 'label_class' => 'wcfm_title', 'value' => $shop_description, 'hints' => __( 'This is displayed on your shop page.', $WCFM->text_domain ) ),
																																																) ) );
							// WC Vendors Pro Settings
							if( WCFM_Dependencies::wcvpro_plugin_active_check() ) {
							  if( WCFM_Dependencies::wcfmu_plugin_active_check() ) {
									$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'wcfm_wcvendors_settings_fields_pro', array(
																																								"banner" => array('label' => __('Banner', $WCFM->text_domain) , 'type' => 'upload', 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_title', 'prwidth' => 250, 'value' => $banner_image_url ),
																																								"_wcv_company_url" => array('label' => __('Store Website / Blog URL', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $_wcv_company_url, 'hints' => __( 'Your company/blog URL here.', $WCFM->text_domain ) ),
																																								"_wcv_store_phone" => array('label' => __('Store Phone', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $_wcv_store_phone, 'hints' => __( 'This is your store contact number.', $WCFM->text_domain ) ),
																																								"_wcv_vacation_mode" => array('label' => __('Enable Vacation Mode', $WCFM->text_domain) , 'type' => 'checkbox', 'class' => 'wcfm-checkbox wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => 'yes', 'dfvalue' => $_wcv_vacation_mode ),
																																								"_wcv_vacation_mode_msg" => array('label' => __('Vacation Message', $WCFM->text_domain) , 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $_wcv_vacation_mode_msg ),
																																								//"_wcv_shipping_policy" => array('label' => __('Shipping Policy', $WCFM->text_domain) , 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $_wcv_shipping_policy ),
																																								//"_wcv_shipping_return_policy" => array('label' => __('Return Policy', $WCFM->text_domain) , 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele', 'label_class' => 'wcfm_title wcfm_ele', 'value' => $_wcv_shipping_return_policy ),
																																								) ) );
								} else {
									if( $is_wcfmu_inactive_notice_show = apply_filters( 'is_wcfmu_inactive_notice_show', true ) ) {
										wcfmu_feature_help_text_show( __( 'WCV Pro Settings', $WCFM->text_domain ) );
									}
							  }
							}
						?>
					</div>
				</div>
				<div class="wcfm_clearfix"></div>
				<!-- end collapsible -->
				
				<?php do_action( 'end_wcfm_wcvendors_settings', $user_id ); ?>
			
			<div class="wcfm-message" tabindex="-1"></div>
			
			<div id="wcfm_settings_submit">
				<input type="submit" name="save-data" value="<?php _e( 'Save', $WCFM->text_domain ); ?>" id="wcfmsettings_save_button" />
			</div>
			
		</form>
		<?php
		do_action( 'after_wcfm_wcvendors_settings' );
		?>
	</div>
</div>