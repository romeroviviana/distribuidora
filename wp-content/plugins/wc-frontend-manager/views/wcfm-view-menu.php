<?php
global $wp, $WCFM, $WCFM_Query;

$wcfm_menus = $WCFM->get_wcfm_menus();

$current_endpoint = $WCFM_Query->get_current_endpoint();

$menu_active_dependent_list = array(
																		'wcfm-products-manage'     => 'wcfm-products',
																		'wcfm-coupons-manage'      => 'wcfm-coupons',
																		'wcfm-orders-details'      => 'wcfm-orders',
																		'wcfm-bookings-details'      => 'wcfm-bookings',
																		'wcfm-reports-sales-by-date'    => 'wcfm-reports',
																		'wcfm-reports-out-of-stock'    => 'wcfm-reports',
																		'wcfm-reports-sales-by-product' => 'wcfm-reports',
																		'wcfm-reports-coupons-by-date'  => 'wcfm-reports',
																		'wcfm-reports-low-in-stock'     => 'wcfm-reports',
																		);

$logo = ( get_option( 'wcfm_site_logo' ) ) ? get_option( 'wcfm_site_logo' ) : '';
$logo_image_url = wp_get_attachment_image_src( $logo, 'full' );

if ( !empty( $logo_image_url ) ) {
	$logo_image_url = $logo_image_url[0];
} else {
	$logo_image_url = $WCFM->plugin_url . 'assets/images/your-logo-here.png';
}

$store_logo = apply_filters( 'wcfm_store_logo', $logo_image_url );
$store_name = apply_filters( 'wcfm_store_name', get_bloginfo() );
?>
<div id="wcfm_menu">

  <div class="wcfm_menu_logo"> 
    <img src="<?php echo $store_logo; ?>" alt="Store Logo" />
    <h4><?php _e( $store_name );?></h4>
  </div>

  <div class="wcfm_menu_items wcfm_menu_home">
    <a class="wcfm_menu_item <?php if( !$current_endpoint ) echo 'active'; ?>" href="<?php echo get_wcfm_page(); ?>">
      <span class="fa fa-home"></span>
      <span class="text"><?php _e( 'Home', $WCFM->text_domain ); ?></span>
    </a>
  </div>
  
  <?php 
  if( !empty($wcfm_menus) ) {
  	foreach( $wcfm_menus as $wcfm_menu_key => $wcfm_menu_data ) {
  		if( !isset( $wcfm_menu_data['capability'] ) || empty( $wcfm_menu_data['capability'] ) || current_user_can( $wcfm_menu_data['capability'] ) ) {
  			$is_active = false;
  			if( isset( $wp->query_vars['wcfm-' . $wcfm_menu_key] ) ) $is_active = true;
  			if( !$is_active && $current_endpoint && isset( $menu_active_dependent_list[$current_endpoint] ) && ( $menu_active_dependent_list[$current_endpoint] == 'wcfm-' . $wcfm_menu_key ) ) $is_active = true;
  		?>
				<div class="wcfm_menu_items wcfm_menu_<?php echo $wcfm_menu_key; ?>">
					<a class="wcfm_menu_item <?php if( $is_active ) echo 'active'; ?>" href="<?php echo $wcfm_menu_data['url']; ?>">
					  <span class="fa fa-<?php echo $wcfm_menu_data['icon']; ?>"></span>
					  <span class="text"><?php echo $wcfm_menu_data['label']; ?></span>
					</a>
					<?php if( isset( $wcfm_menu_data['has_new'] ) ) { ?>
						<span class="wcfm_sub_menu_items <?php echo $wcfm_menu_data['new_class']; ?> moz_class">
							<a href="<?php echo $wcfm_menu_data['new_url']; ?>"><?php _e( 'Add New', $WCFM->text_domain ); ?></a>
						</span>
					<?php } ?>
				</div>
			<?php
			}
		}
	}
	?>
</div>