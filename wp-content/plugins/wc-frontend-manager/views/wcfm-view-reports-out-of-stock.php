<?php
global $WCFM;

?>

<div class="collapse wcfm-collapse" id="wcfm_report_details">

  <div class="wcfm-page-headig">
		<span class="fa fa-times-circle-o"></span>
		<span class="wcfm-page-heading-text"><?php _e( 'Out of Stock', $WCFM->text_domain ); ?></span>
	</div>
	<div class="wcfm-collapse-content">

		<?php require_once( $WCFM->library->views_path . 'wcfm-view-reports-menu.php' ); ?>
		<?php
		if( $allow_wp_admin_view = apply_filters( 'wcfm_allow_wp_admin_view', true ) ) {
			?>
			<a target="_blank" class="wcfm_wp_admin_view text_tip" href="<?php echo admin_url('admin.php?page=wc-reports&tab=stock&report=out_of_stock'); ?>" data-tip="<?php _e( 'WP Admin View', $WCFM->text_domain ); ?>"><span class="fa fa-user-secret"></span></a>
			<?php
		}
		?>
		<div class="wcfm-clearfix"></div>
		<div class="wcfm-container">
			<div id="wcfm_report_details_expander" class="wcfm-content">
				<table id="wcfm-reports-out-of-stock" class="display" cellspacing="0" width="100%">
					<thead>
						<tr>
							<th><?php _e( 'product', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Parent', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Unit in stock', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Stock Status', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Actions', $WCFM->text_domain ); ?></th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th><?php _e( 'product', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Parent', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Unit in stock', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Stock Status', $WCFM->text_domain ); ?></th>
							<th><?php _e( 'Actions', $WCFM->text_domain ); ?></th>
						</tr>
					</tfoot>
				</table>
				<div class="wcfm-clearfix"></div>
			</div>
		</div>
	</div>
</div>