<?php
global $WCFM;

?>

<div class="collapse wcfm-collapse" id="wcfm_orders_listing">

  <div class="wcfm-page-headig">
		<span class="fa fa-shopping-cart"></span>
		<span class="wcfm-page-heading-text"><?php _e( 'Orders', $WCFM->text_domain ); ?></span>
	</div>
	<div class="wcfm-collapse-content">

		<?php
		do_action( 'before_wcfm_orders' );
		
		if( $allow_wp_admin_view = apply_filters( 'wcfm_allow_wp_admin_view', true ) ) {
			?>
			<a target="_blank" class="wcfm_wp_admin_view text_tip" href="<?php echo admin_url('edit.php?post_type=shop_order'); ?>" data-tip="<?php _e( 'WP Admin View', $WCFM->text_domain ); ?>"><span class="fa fa-user-secret"></span></a>
			<?php
		}
		?>
		<div class="wcfm-clearfix"></div>
		<div class="wcfm-container">
			<div id="wwcfm_orders_listing_expander" class="wcfm-content">
				<table id="wcfm-orders" class="display" cellspacing="0" width="100%">
					<thead>
						<tr>                                                                                      
							<th><span class="wcicon-status-processing text_tip" data-tip="<?php _e( 'Status', $WCFM->text_domain ); ?>"></span></th>
							<th><?php _e( 'Order', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Purchased', $WCFM->text_domain ); ?></th>
							<th><?php echo apply_filters( 'wcfm_orders_total_heading', __( 'Total', $WCFM->text_domain ) ); ?></th>
							<th><?php _e( 'Date', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Actions', $WCFM->text_domain ); ?></th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th><span class="wcicon-status-processing text_tip" data-tip="<?php _e( 'Status', $WCFM->text_domain ); ?>"></span></th>
							<th><?php _e( 'Order', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Purchased', $WCFM->text_domain ); ?></th>
							<th><?php echo apply_filters( 'wcfm_orders_total_heading', __( 'Total', $WCFM->text_domain ) ); ?></th>
							<th><?php _e( 'Date', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Actions', $WCFM->text_domain ); ?></th>
						</tr>
					</tfoot>
				</table>
				<div class="wcfm-clearfix"></div>
			</div>
		</div>
		<?php
		do_action( 'after_wcfm_orders' );
		?>
	</div>
</div>