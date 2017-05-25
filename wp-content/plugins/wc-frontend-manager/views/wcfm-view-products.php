<?php
global $WCFM;

if( !current_user_can( 'edit_products' ) ) {
	_e( "You don't have permission to access this page. Please contact site administrator for assistance.", $WCFM->text_domain );
	return;
}

?>

<div class="collapse wcfm-collapse" id="wcfm_products_listing">
	
	<div class="wcfm-page-headig">
		<span class="fa fa-cubes"></span>
		<span class="wcfm-page-heading-text"><?php _e( 'Products', $WCFM->text_domain ); ?></span>
	</div>
	<div class="wcfm-collapse-content">

		<?php do_action( 'before_wcfm_products' ); ?>
		
		<?php
		if( $allow_wp_admin_view = apply_filters( 'wcfm_allow_wp_admin_view', true ) ) {
			?>
			<a target="_blank" class="wcfm_wp_admin_view text_tip" href="<?php echo admin_url('edit.php?post_type=product'); ?>" data-tip="<?php _e( 'WP Admin View', $WCFM->text_domain ); ?>"><span class="fa fa-user-secret"></span></a>
			<?php
		}
		if( $has_new = apply_filters( 'wcfm_add_new_product_sub_menu', true ) ) {
			echo '<a id="add_new_product_dashboard" href="'.get_wcfm_edit_product_url().'"><span class="fa fa-cube"></span><span class="text">' . __('Add New Product', $WCFM->text_domain) . '</span></a>';
		}
		?>
		<div class="wcfm-clearfix"></div>
		<div class="wcfm-container">
			<div id="wcfm_products_listing_expander" class="wcfm-content">
				<table id="wcfm-products" class="display" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th><span class="wcicon-image text_tip" data-tip="<?php _e( 'Image', $WCFM->text_domain ); ?>"></span></th>
							<th><?php _e( 'Name', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'SKU', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Status', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Stock', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Price', $WCFM->text_domain ); ?></th>
							<th><span class="wcicon-simple text_tip" data-tip="<?php _e( 'Type', $WCFM->text_domain ); ?>"></span></th>
							<th><?php _e( 'Date', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Actions', $WCFM->text_domain ); ?></th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th><span class="wcicon-image text_tip" data-tip="<?php _e( 'Image', $WCFM->text_domain ); ?>"></span></th>
							<th><?php _e( 'Name', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'SKU', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Status', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Stock', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Price', $WCFM->text_domain ); ?></th>
							<th><span class="wcicon-simple text_tip" data-tip="<?php _e( 'Type', $WCFM->text_domain ); ?>"></span></th>
							<th><?php _e( 'Date', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Actions', $WCFM->text_domain ); ?></th>
						</tr>
					</tfoot>
				</table>
				<div class="wcfm-clearfix"></div>
			</div>
		</div>
		<?php
		do_action( 'after_wcfm_products' );
		?>
	</div>
</div>