<?php
global $wp, $WCFM, $wc_product_attributes;

if( !current_user_can( 'edit_products' ) ) {
	_e( "You don't have permission to access this page. Please contact site administrator for assistance.", $WCFM->text_domain );
	return;
}

$product_id = 0;
$product = array();
$product_type = '';
$is_virtual = '';
$title = '';
$sku = '';
$excerpt = '';
$description = '';
$regular_price = '';
$sale_price = '';
$sale_date_from = '';
$sale_date_upto = '';
$product_url = '';
$button_text = '';
$is_downloadable = '';
$children = array();

$featured_img = '';
$gallery_img_ids = array();
$gallery_img_urls = array();
$categories = array();
$product_tags = '';
$manage_stock = '';
$stock_qty = 0;
$backorders = '';
$stock_status = ''; 
$sold_individually = '';
$weight = '';
$length = '';
$width = '';
$height = '';
$shipping_class = '';
$tax_status = '';
$tax_class = '';
$attributes = array();
$attributes_select_type = array();
$variations = array();

$upsell_ids = array();
$crosssell_ids = array();

if( isset( $wp->query_vars['wcfm-products-manage'] ) && !empty( $wp->query_vars['wcfm-products-manage'] ) ) {
	
	$product = wc_get_product( $wp->query_vars['wcfm-products-manage'] );
	// Fetching Product Data
	if($product && !empty($product)) {
		$product_id = $wp->query_vars['wcfm-products-manage'];
		$product_type = $product->get_type();
		$title = $product->get_title();
		$sku = $product->get_sku();
		$excerpt = $product->get_short_description();
		$description = $product->get_description();
		$regular_price = $product->get_regular_price();
		$sale_price = $product->get_sale_price();
		
		// External product option
		$product_url = get_post_meta( $product_id, '_product_url', true);
		$button_text = get_post_meta( $product_id, '_button_text', true);
		
		// Virtual
		$is_virtual = ( get_post_meta( $product_id, '_virtual', true) == 'yes' ) ? 'enable' : '';
		
		// Download ptions
		$is_downloadable = ( get_post_meta( $product_id, '_downloadable', true) == 'yes' ) ? 'enable' : '';
		if( $product_type != 'simple' ) $is_downloadable = '';
		
		// Product Images
		$featured_img = ($product->get_image_id()) ? $product->get_image_id() : '';
		if($featured_img) $featured_img = wp_get_attachment_url($featured_img);
		if(!$featured_img) $featured_img = '';
		$gallery_img_ids = $product->get_gallery_image_ids();
		if(!empty($gallery_img_ids)) {
			foreach($gallery_img_ids as $gallery_img_id) {
				$gallery_img_urls[]['image'] = wp_get_attachment_url($gallery_img_id);
			}
		}
		
		// Product Categories
		$pcategories = get_the_terms( $product_id, 'product_cat' );
		if( !empty($pcategories) ) {
			foreach($pcategories as $pkey => $pcategory) {
				$categories[] = $pcategory->term_id;
			}
		} else {
			$categories = array();
		}
		
		// Product Tags
		$product_tag_list = wp_get_post_terms($product_id, 'product_tag', array("fields" => "names"));
		$product_tags = implode(',', $product_tag_list);
		
		// Product Stock options
		$manage_stock = $product->managing_stock() ? 'enable' : '';
		$stock_qty = $product->get_stock_quantity();
		$backorders = $product->get_backorders();
		$stock_status = $product->get_stock_status(); 
		$sold_individually = $product->is_sold_individually() ? 'enable' : '';
		
		// Product Shipping Data
		$weight = $product->get_weight();
		$length = $product->get_length();
		$width = $product->get_width();
		$height = $product->get_height();
		$shipping_class = $product->get_shipping_class_id();
		
		// Product Tax Data
		$tax_status = $product->get_tax_status();
		$tax_class = $product->get_tax_class();
		
		// Product Attributes
		$wcfm_attributes = get_post_meta( $product_id, '_product_attributes', true );
		if(!empty($wcfm_attributes)) {
			$acnt = 0;
			foreach($wcfm_attributes as $wcfm_attribute) {
				
				if ( $wcfm_attribute['is_taxonomy'] ) {
					$att_taxonomy = $wcfm_attribute['name'];

					if ( ! taxonomy_exists( $att_taxonomy ) ) {
						continue;
					}
					
					$attribute_taxonomy = $wc_product_attributes[ $att_taxonomy ];
					
					$attributes[$acnt]['term_name'] = $att_taxonomy;
					$attributes[$acnt]['name'] = wc_attribute_label( $att_taxonomy );
					$attributes[$acnt]['attribute_taxonomy'] = $attribute_taxonomy;
					$attributes[$acnt]['tax_name'] = $att_taxonomy;
					$attributes[$acnt]['is_taxonomy'] = 1;
					
					if ( 'select' === $attribute_taxonomy->attribute_type ) {
						$args = array(
										'orderby'    => 'name',
										'hide_empty' => 0
									);
						$all_terms = get_terms( $att_taxonomy, apply_filters( 'wcfm_product_attribute_terms', $args ) );
						$attributes_option = array();
						if ( $all_terms ) {
							foreach ( $all_terms as $term ) {
								$attributes_option[$term->term_id] = esc_attr( apply_filters( 'woocommerce_product_attribute_term_name', $term->name, $term ) );
							}
						}
						$attributes[$acnt]['attribute_type'] = 'select';
						$attributes[$acnt]['option_values'] = $attributes_option;
						$attributes[$acnt]['value'] = wp_get_post_terms( $product_id, $att_taxonomy, array( 'fields' => 'ids' ) );
					} else {
						$attributes[$acnt]['attribute_type'] = 'text';
						$attributes[$acnt]['value'] = esc_attr( implode( ' ' . WC_DELIMITER . ' ', wp_get_post_terms( $product_id, $att_taxonomy, array( 'fields' => 'names' ) ) ) );
					}
				} else {
					$attributes[$acnt]['term_name'] = apply_filters( 'woocommerce_attribute_label', $wcfm_attribute['name'], $wcfm_attribute['name'], true );
					$attributes[$acnt]['name'] = apply_filters( 'woocommerce_attribute_label', $wcfm_attribute['name'], $wcfm_attribute['name'], true );
					$attributes[$acnt]['value'] = $wcfm_attribute['value'];
					$attributes[$acnt]['tax_name'] = '';
					$attributes[$acnt]['is_taxonomy'] = 0;
					$attributes[$acnt]['attribute_type'] = 'text';
				}
				
				$attributes[$acnt]['is_visible'] = $wcfm_attribute['is_visible'] ? 'enable' : '';
				$attributes[$acnt]['is_variation'] = $wcfm_attribute['is_variation'] ? 'enable' : '';
				
				if( 'select' === $attributes[$acnt]['attribute_type'] ) {
					$attributes_select_type[$acnt] = $attributes[$acnt];
					unset($attributes[$acnt]);
				}
				$acnt++;
			}
		}
		
		// Variable Product Variations
		$variation_ids = $product->get_children();
		if(!empty($variation_ids)) {
			foreach($variation_ids as $variation_id_key => $variation_id) {
				$variation_data = new WC_Product_Variation($variation_id);
				
				$variations[$variation_id_key]['id'] = $variation_id;
				$variations[$variation_id_key]['enable'] = $variation_data->is_purchasable() ? 'enable' : '';
				$variations[$variation_id_key]['sku'] = $variation_data->get_sku();
				
				// Variation Image
				$variation_img = $variation_data->get_image_id();
				if($variation_img) $variation_img = wp_get_attachment_url($variation_img);
				else $variation_img = '';
				$variations[$variation_id_key]['image'] = $variation_img;
				
				// Variation Price
				$variations[$variation_id_key]['regular_price'] = $variation_data->get_regular_price();
				$variations[$variation_id_key]['sale_price'] = $variation_data->get_sale_price();
				
				// Variation Stock Data
				$variations[$variation_id_key]['manage_stock'] = $variation_data->managing_stock() ? 'enable' : '';
				$variations[$variation_id_key]['stock_status'] = $variation_data->get_stock_status();
				$variations[$variation_id_key]['stock_qty'] = $variation_data->get_stock_quantity();
				$variations[$variation_id_key]['backorders'] = $variation_data->get_backorders();
				
				// Variation Virtual Data
				$variations[$variation_id_key]['is_virtual'] = ( 'yes' == get_post_meta($variation_id, '_virtual', true) ) ? 'enable' : '';
				
				// Variation Downloadable Data
				$variations[$variation_id_key]['is_downloadable'] = ( 'yes' == get_post_meta($variation_id, '_downloadable', true) ) ? 'enable' : '';
				$variations[$variation_id_key]['downloadable_files'] = get_post_meta($variation_id, '_downloadable_files', true);
				$variations[$variation_id_key]['download_limit'] = ( -1 == get_post_meta($variation_id, '_download_limit', true) ) ? '' : get_post_meta($variation_id, '_download_limit', true);
				$variations[$variation_id_key]['download_expiry'] = ( -1 == get_post_meta($variation_id, '_download_expiry', true) ) ? '' : get_post_meta($variation_id, '_download_expiry', true);
				if(!empty($variations[$variation_id_key]['downloadable_files'])) {
					foreach($variations[$variation_id_key]['downloadable_files'] as $variations_downloadable_files) {
						$variations[$variation_id_key]['downloadable_file'] = $variations_downloadable_files['file'];
						$variations[$variation_id_key]['downloadable_file_name'] = $variations_downloadable_files['name'];
					}
				}
				
				// Variation Shipping Data
				$variations[$variation_id_key]['weight'] = $variation_data->get_weight();
				$variations[$variation_id_key]['length'] = $variation_data->get_length();
				$variations[$variation_id_key]['width'] = $variation_data->get_width();
				$variations[$variation_id_key]['height'] = $variation_data->get_height();
				$variations[$variation_id_key]['shipping_class'] = $variation_data->get_shipping_class_id();
				
				// Variation Tax
				$variations[$variation_id_key]['tax_class'] = $variation_data->get_tax_class();
				
				// Variation Attributes
				$variations[$variation_id_key]['attributes'] = json_encode( $variation_data->get_variation_attributes() );
				
				// Description
				$variations[$variation_id_key]['description'] = get_post_meta($variation_id, '_variation_description', true);
				
				$variations = apply_filters( 'wcfm_variation_edit_data', $variations, $variation_id, $variation_id_key );
			}
		}
		
		$upsell_ids = get_post_meta( $product_id, '_upsell_ids', true ) ? get_post_meta( $product_id, '_upsell_ids', true ) : array();
		$crosssell_ids = get_post_meta( $product_id, '_crosssell_ids', true ) ? get_post_meta( $product_id, '_crosssell_ids', true ) : array();
		$children = get_post_meta( $product_id, '_children', true ) ? get_post_meta( $product_id, '_children', true ) : array();
	}
}

$current_user_id = get_current_user_id();

// Shipping Class List
$product_shipping_class = get_terms( 'product_shipping_class', array('hide_empty' => 0));
$variation_shipping_option_array = array('-1' => __('Same as parent', $WCFM->text_domain));
$shipping_option_array = array('_no_shipping_class' => __('No shipping class', $WCFM->text_domain));
foreach($product_shipping_class as $product_shipping) {
	$variation_shipping_option_array[$product_shipping->term_id] = $product_shipping->name;
	$shipping_option_array[$product_shipping->term_id] = $product_shipping->name;
}

// Tax Class List
$tax_classes         = WC_Tax::get_tax_classes();
$classes_options     = array();
$variation_tax_classes_options['parent'] = __( 'Same as parent', $WCFM->text_domain );
$variation_tax_classes_options[''] = __( 'Standard', $WCFM->text_domain );
$tax_classes_options[''] = __( 'Standard', $WCFM->text_domain );

if ( ! empty( $tax_classes ) ) {

	foreach ( $tax_classes as $class ) {
		$tax_classes_options[ sanitize_title( $class ) ] = esc_html( $class );
		$variation_tax_classes_options[ sanitize_title( $class ) ] = esc_html( $class );
	}
}

$args = array(
	'posts_per_page'   => -1,
	'offset'           => 0,
	'category'         => '',
	'category_name'    => '',
	'orderby'          => 'date',
	'order'            => 'DESC',
	'include'          => '',
	'exclude'          => '',
	'meta_key'         => '',
	'meta_value'       => '',
	'post_type'        => 'product',
	'post_mime_type'   => '',
	'post_parent'      => '',
	//'author'	   => get_current_user_id(),
	'post_status'      => array('publish'),
	'suppress_filters' => true 
);
$args = apply_filters( 'wcfm_products_args', $args );

$products_objs = get_posts( $args );
$products_array = array();
if( !empty($products_objs) ) {
	foreach( $products_objs as $products_obj ) {
		$products_array[esc_attr( $products_obj->ID )] = esc_html( $products_obj->post_title );
	}
}
$product_types = apply_filters( 'wcfm_product_types', array('simple' => __('Simple Product', $WCFM->text_domain), 'variable' => __('Variable Product', $WCFM->text_domain), 'grouped' => __('Grouped Product', $WCFM->text_domain), 'external' => __('External/Affiliate Product', $WCFM->text_domain) ) );
$product_categories   = get_terms( 'product_cat', 'orderby=name&hide_empty=0&parent=0' );

/*
if( $allow_wp_admin_view = apply_filters( 'wcfm_allow_wp_admin_view', true ) ) {
	?>
	<a target="_blank" class="wcfm_wp_admin_view text_tip" href="<?php echo admin_url('post-new.php?post_type=product'); ?>" data-tip="<?php _e( 'WP Admin View', $WCFM->text_domain ); ?>"><span class="wcicon-user2"></span></a>
	<?php
}
*/
?>

<div class="collapse wcfm-collapse" id="">
  <div class="wcfm-page-headig">
		<span class="fa fa-cube"></span>
		<span class="wcfm-page-heading-text"><?php _e( 'Manage Product', $WCFM->text_domain ); ?></span>
	</div>
	<div class="wcfm-collapse-content">
		<?php do_action( 'before_wcfm_product_simple' ); ?>
		<form id="wcfm_products_manage_form" class="wcfm">
		
			<?php do_action( 'begin_wcfm_products_manage_form' ); ?>
			
			<!-- collapsible -->
			<div class="page_collapsible products_manage_general simple variable external grouped booking" id="wcfm_products_manage_form_general_head">
				<?php _e('General', $WCFM->text_domain); ?><span></span>
			</div>
			<div class="wcfm-container simple variable external grouped booking">
				<div id="wcfm_products_manage_form_general_expander" class="wcfm-content">
					<?php
						$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'wcfm_product_manage_fields_general', array(
																																															"product_type" => array('label' => __('Product Type', $WCFM->text_domain) , 'type' => 'select', 'options' => $product_types, 'class' => 'wcfm-select wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title wcfm_ele simple variable external grouped booking', 'value' => $product_type ),
																																															"title" => array('label' => __('Title', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title wcfm_ele simple variable external grouped booking', 'value' => $title),
																																															"sku" => array('label' => __('SKU', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable grouped external', 'label_class' => 'wcfm_title wcfm_ele simple variable grouped external', 'value' => $sku, 'hints' => __( 'SKU refers to a Stock-keeping unit, a unique identifier for each distinct product and service that can be purchased.', $WCFM->text_domain )),
																																															"product_url" => array('label' => __('Product URL', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele external', 'label_class' => 'wcfm_ele wcfm_title external', 'value' => $product_url, 'hints' => __( 'Enter the external URL to the product.', $WCFM->text_domain )),
																																															"button_text" => array('label' => __('Button Text', $WCFM->text_domain) , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele external', 'label_class' => 'wcfm_ele wcfm_title external', 'value' => $button_text, 'hints' => __( 'This text will be shown on the button linking to the external product.', $WCFM->text_domain )),
																																															"regular_price" => array('label' => __('Price', $WCFM->text_domain) . '(' . get_woocommerce_currency_symbol() . ')', 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple external non-subscription non-variable-subscription', 'label_class' => 'wcfm_ele wcfm_title simple external non-subscription non-variable-subscription', 'value' => $regular_price),
																																															"sale_price" => array('label' => __('Sale Price', $WCFM->text_domain) . '(' . get_woocommerce_currency_symbol() . ')', 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple external non-variable-subscription', 'label_class' => 'wcfm_ele wcfm_title simple external non-variable-subscription', 'value' => $sale_price),
																																															"excerpt" => array('label' => __('Short Description', $WCFM->text_domain) , 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele simple variable external grouped booking' , 'label_class' => 'wcfm_title', 'value' => $excerpt),
																																															"description" => array('label' => __('Description', $WCFM->text_domain) , 'type' => 'wpeditor', 'class' => 'wcfm-editor wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title', 'value' => $description),
																																															"pro_id" => array('type' => 'hidden', 'value' => $product_id)
																																											), $product_id, $product_type ) );
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			
			<?php do_action( 'after_wcfm_products_manage_general', $product_id, $product_type ); ?>
			
			<!-- collapsible 2 - Grouped Product -->
			<div class="page_collapsible products_manage_grouped grouped" id="wcfm_products_manage_form_grouped_head"><?php _e('Grouped Products', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container grouped">
				<div id="wcfm_products_manage_form_grouped_expander" class="wcfm-content">
					<?php
					$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'product_manage_fields_grouped', array(  
																																															"grouped_products" => array('label' => __('Grouped products', $WCFM->text_domain) , 'type' => 'select', 'attributes' => array( 'multiple' => 'multiple', 'style' => 'width: 60%;' ), 'class' => 'wcfm-select wcfm_ele grouped', 'label_class' => 'wcfm_title wcfm_ele grouped', 'options' => $products_array, 'value' => $children, 'hints' => __( 'This lets you choose which products are part of this group.', $WCFM->text_domain ))
																																										)) );
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			
			<!-- collapsible 2 -->
			<div class="page_collapsible products_manage_gallery simple variable external grouped booking" id="wcfm_products_manage_form_gallery_head"><?php _e('Featured Image and Gallery', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container simple variable external grouped booking">
				<div id="wcfm_products_manage_form_gallery_expander" class="wcfm-content">
					<?php
					$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'wcfm_product_manage_fields_gallery', array(  "featured_img" => array('label' => __('Featured Image', $WCFM->text_domain) , 'type' => 'upload', 'class' => 'wcfm-text wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title', 'prwidth' => 125, 'value' => $featured_img)
																																											), $gallery_img_urls ) );
					
					// Product Gallary missing message
					if( !WCFM_Dependencies::wcfmu_plugin_active_check() ) {
						if( $is_wcfmu_inactive_notice_show = apply_filters( 'is_wcfmu_inactive_notice_show', true ) ) {
							wcfmu_feature_help_text_show( __( 'Image Gallery', $WCFM->text_domain ) );
						}
					}
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			
			<!-- collapsible 3 -->
			<div class="page_collapsible products_manage_taxonomy simple variable external grouped booking" id="wcfm_products_manage_form_taxonomy_head"><?php _e('Category & Tags', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container simple variable external grouped booking">
				<div id="wcfm_products_manage_form_taxonomy_expander" class="wcfm-content">
					<p class="wcfm_title"><strong><?php _e( 'Categories', $WCFM->text_domain ); ?></strong></p><label class="screen-reader-text" for="product_cats"><?php _e( 'Categories', $WCFM->text_domain ); ?></label>
					<select id="product_cats" name="product_cats[]" class="wcfm-select wcfm_ele simple variable external grouped booking" multiple="multiple" style="width: 60%; margin-bottom: 10px;">
						<?php
							if ( $product_categories ) {
								foreach ( $product_categories as $cat ) {
									echo '<option value="' . esc_attr( $cat->term_id ) . '"' . selected( in_array( $cat->term_id, $categories ), true, false ) . '>' . esc_html( $cat->name ) . '</option>';
									$product_child_categories   = get_terms( 'product_cat', 'orderby=name&hide_empty=0&parent=' . absint( $cat->term_id ) );
									if ( $product_child_categories ) {
										foreach ( $product_child_categories as $child_cat ) {
											echo '<option value="' . esc_attr( $child_cat->term_id ) . '"' . selected( in_array( $child_cat->term_id, $categories ), true, false ) . '>' . '&nbsp;&nbsp;' . esc_html( $child_cat->name ) . '</option>';
										}
									}
								}
							}
						?>
					</select>
					<?php
					
					$product_taxonomies = get_object_taxonomies( 'product', 'objects' );
					if( !empty( $product_taxonomies ) ) {
						foreach( $product_taxonomies as $product_taxonomy ) {
							if( !in_array( $product_taxonomy->name, array( 'product_cat', 'product_tag' ) ) ) {
								if( $product_taxonomy->public && $product_taxonomy->show_ui ) {
									// Fetching Saved Values
									$taxonomy_values_arr = array();
									if($product && !empty($product)) {
										$taxonomy_values = get_the_terms( $product_id, $product_taxonomy->name );
										if( !empty($taxonomy_values) ) {
											foreach($taxonomy_values as $pkey => $ptaxonomy) {
												$taxonomy_values_arr[] = $ptaxonomy->term_id;
											}
										}
									}
									?>
									<p class="wcfm_title"><strong><?php _e( $product_taxonomy->label, $WCFM->text_domain ); ?></strong></p><label class="screen-reader-text" for="<?php echo $product_taxonomy->name; ?>"><?php _e( $product_taxonomy->label, $WCFM->text_domain ); ?></label>
									<select id="<?php echo $product_taxonomy->name; ?>" name="product_custom_taxonomies[<?php echo $product_taxonomy->name; ?>][]" class="wcfm-select product_taxonomies wcfm_ele simple variable external grouped booking" multiple="multiple" style="width: 60%; margin-bottom: 10px;">
										<?php
											$product_taxonomy_terms   = get_terms( $product_taxonomy->name, 'orderby=name&hide_empty=0&parent=0' );
											if ( $product_taxonomy_terms ) {
												foreach ( $product_taxonomy_terms as $product_taxonomy_term ) {
													echo '<option value="' . esc_attr( $product_taxonomy_term->term_id ) . '"' . selected( in_array( $product_taxonomy_term->term_id, $taxonomy_values_arr ), true, false ) . '>' . esc_html( $product_taxonomy_term->name ) . '</option>';
													$product_taxonomy_child_terms   = get_terms( $product_taxonomy->name, 'orderby=name&hide_empty=0&parent=' . absint( $product_taxonomy_term->term_id ) );
													if ( $product_taxonomy_child_terms ) {
														foreach ( $product_taxonomy_child_terms as $product_taxonomy_child_term ) {
															echo '<option value="' . esc_attr( $product_taxonomy_child_term->term_id ) . '"' . selected( in_array( $product_taxonomy_child_term->term_id, $taxonomy_values_arr ), true, false ) . '>' . '&nbsp;&nbsp;' . esc_html( $product_taxonomy_child_term->name ) . '</option>';
														}
													}
												}
											}
										?>
									</select>
									<?php
								}
							}
						}
					}
					
					
					$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'product_simple_fields_taxonomy', array(  "product_tags" => array('label' => __('Tags', $WCFM->text_domain) , 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title', 'value' => $product_tags, 'desc' => __('Separate Product Tags with commas', $WCFM->text_domain))
																																											)) );
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			
			<?php if( $allow_inventory = apply_filters( 'wcfm_is_allow_inventory', true ) ) { ?>
			<!-- collapsible 4 -->
			<div class="page_collapsible products_manage_inventory simple variable grouped" id="wcfm_products_manage_form_inventory_head"><?php _e('Inventory', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container simple variable grouped">
				<div id="wcfm_products_manage_form_inventory_expander" class="wcfm-content">
					<?php
					$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'product_simple_fields_stock', array(  "manage_stock" => array('label' => __('Manage Stock?', $WCFM->text_domain) , 'type' => 'checkbox', 'class' => 'wcfm-checkbox wcfm_ele simple variable manage_stock_ele', 'value' => 'enable', 'label_class' => 'wcfm_title wcfm_ele checkbox_title simple variable', 'hints' => __('Enable stock management at product level', $WCFM->text_domain), 'dfvalue' => $manage_stock),
																																																	"stock_qty" => array('label' => __('Stock Qty', $WCFM->text_domain) , 'type' => 'number', 'class' => 'wcfm-text wcfm_ele simple variable non_manage_stock_ele', 'label_class' => 'wcfm_title simple variable non_manage_stock_ele', 'value' => $stock_qty, 'hints' => __( 'Stock quantity. If this is a variable product this value will be used to control stock for all variations, unless you define stock at variation level.', $WCFM->text_domain )),
																																																	"backorders" => array('label' => __('Allow Backorders?', $WCFM->text_domain) , 'type' => 'select', 'options' => array('no' => __('Do not Allow', $WCFM->text_domain), 'notify' => __('Allow, but notify customer', $WCFM->text_domain), 'yes' => __('Allow', $WCFM->text_domain)), 'class' => 'wcfm-select wcfm_ele simple variable non_manage_stock_ele', 'label_class' => 'wcfm_title wcfm_ele simple variable non_manage_stock_ele', 'value' => $backorders, 'hints' => __( 'If managing stock, this controls whether or not backorders are allowed. If enabled, stock quantity can go below 0.', $WCFM->text_domain )),
																																																	"stock_status" => array('label' => __('Stock status', $WCFM->text_domain) , 'type' => 'select', 'options' => array('instock' => __('In stock', $WCFM->text_domain), 'outofstock' => __('Out of stock', $WCFM->text_domain)), 'class' => 'wcfm-select wcfm_ele simple variable grouped non-variable-subscription', 'label_class' => 'wcfm_ele wcfm_title simple variable grouped non-variable-subscription', 'value' => $stock_status, 'hints' => __( 'Controls whether or not the product is listed as "in stock" or "out of stock" on the frontend.', $WCFM->text_domain )),
																																																	"sold_individually" => array('label' => __('Sold Individually', $WCFM->text_domain) , 'type' => 'checkbox', 'value' => 'enable', 'class' => 'wcfm-checkbox wcfm_ele simple variable', 'hints' => __('Enable this to only allow one of this item to be bought in a single order', $WCFM->text_domain), 'label_class' => 'wcfm_title wcfm_ele simple variable checkbox_title', 'dfvalue' => $sold_individually)
																																													)) );
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			<?php } ?>
			
			<?php if( $allow_shipping = apply_filters( 'wcfm_is_allow_shipping', true ) ) { ?>
			<!-- collapsible 5 -->
			<div class="page_collapsible products_manage_shipping simple variable nonvirtual booking" id="wcfm_products_manage_form_shipping_head"><?php _e('Shipping', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container simple variable nonvirtual booking">
				<div id="wcfm_products_manage_form_shipping_expander" class="wcfm-content">
					<?php
					$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'wcfm_product_manage_fields_shipping', array(  "weight" => array('label' => __('Weight', $WCFM->text_domain) . ' ('.get_option( 'woocommerce_weight_unit', 'kg' ).')' , 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable booking', 'label_class' => 'wcfm_title', 'value' => $weight),
																																																"length" => array('label' => __('Length', $WCFM->text_domain) . ' ('.get_option( 'woocommerce_dimension_unit', 'cm' ).')', 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable booking', 'label_class' => 'wcfm_title', 'value' => $length),
																																																"width" => array('label' => __('Width', $WCFM->text_domain) . ' ('.get_option( 'woocommerce_dimension_unit', 'cm' ).')', 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable booking', 'label_class' => 'wcfm_title', 'value' => $width),
																																																"height" => array('label' => __('Height', $WCFM->text_domain) . ' ('.get_option( 'woocommerce_dimension_unit', 'cm' ).')', 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable booking', 'label_class' => 'wcfm_title', 'value' => $height),
																																																"shipping_class" => array('label' => __('Shipping class', $WCFM->text_domain) , 'type' => 'select', 'options' => $shipping_option_array, 'class' => 'wcfm-select wcfm_ele simple variable booking', 'label_class' => 'wcfm_title', 'value' => $shipping_class)
																																											), $product_id ) );
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			<?php } ?>
			
			<?php if( $allow_tax = apply_filters( 'wcfm_is_allow_tax', true ) ) { ?>
			<?php if ( wc_tax_enabled() ) { ?>
			<!-- collapsible 6 -->
			<div class="page_collapsible products_manage_tax simple variable" id="wcfm_products_manage_form_tax_head"><?php _e('Tax', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container simple variable">
				<div id="wcfm_products_manage_form_tax_expander" class="wcfm-content">
					<?php
					$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'product_simple_fields_tax', array(  
																																																"tax_status" => array('label' => __('Tax Status', $WCFM->text_domain) , 'type' => 'select', 'options' => array( 'taxable' => __( 'Taxable', $WCFM->text_domain ), 'shipping' => __( 'Shipping only', $WCFM->text_domain ), 'none' => _x( 'None', 'Tax status', $WCFM->text_domain ) ), 'class' => 'wcfm-select wcfm_ele simple variable', 'label_class' => 'wcfm_title', 'value' => $tax_status, 'hints' => __( 'Define whether or not the entire product is taxable, or just the cost of shipping it.', $WCFM->text_domain )),
																																																"tax_class" => array('label' => __('Tax Class', $WCFM->text_domain) , 'type' => 'select', 'options' => $tax_classes_options, 'class' => 'wcfm-select wcfm_ele simple variable', 'label_class' => 'wcfm_title', 'value' => $tax_class, 'hints' => __( 'Choose a tax class for this product. Tax classes are used to apply different tax rates specific to certain types of product.', $WCFM->text_domain ))
																																											)) );
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			<?php } ?>
			<?php } ?>
			
			<?php if( $allow_attribute = apply_filters( 'wcfm_is_allow_attribute', true ) ) { ?>
			<!-- collapsible 7 -->
			<div class="page_collapsible products_manage_attribute simple variable external grouped booking" id="wcfm_products_manage_form_attribute_head"><?php _e('Attributes', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container simple variable external grouped booking">
				<div id="wcfm_products_manage_form_attribute_expander" class="wcfm-content">
					<?php do_action( 'wcfm_products_manage_attributes' ); ?>
						<?php
							$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'product_simple_fields_attributes', array(  
																																															"attributes" => array('label' => __('Attributes', $WCFM->text_domain) , 'type' => 'multiinput', 'class' => 'wcfm-text wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title', 'value' => $attributes, 'options' => array(
																																																	"term_name" => array('type' => 'hidden'),
																																																	"name" => array('label' => __('Name', $WCFM->text_domain), 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title'),
																																																	"value" => array('label' => __('Value(s):', $WCFM->text_domain), 'type' => 'textarea', 'class' => 'wcfm-textarea wcfm_ele simple variable external grouped booking', 'placeholder' => __('Enter some text, some attributes by "|" separating values.', $WCFM->text_domain), 'label_class' => 'wcfm_title'),
																																																	"is_visible" => array('label' => __('Visible on the product page', $WCFM->text_domain), 'type' => 'checkbox', 'value' => 'enable', 'class' => 'wcfm-checkbox wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title checkbox_title'),
																																																	"is_variation" => array('label' => __('Use as Variation', $WCFM->text_domain), 'type' => 'checkbox', 'value' => 'enable', 'class' => 'wcfm-checkbox wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title checkbox_title wcfm_ele variable variable-subscription'),
																																																	"tax_name" => array('type' => 'hidden'),
																																																	"is_taxonomy" => array('type' => 'hidden')
																																															))
																																										)) );
							
							if( !empty($attributes_select_type) ) {
								$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'product_simple_fields_attributes', array(  
																																															"select_attributes" => array('type' => 'multiinput', 'class' => 'wcfm-text wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title', 'value' => $attributes_select_type, 'options' => array(
																																																	"term_name" => array('type' => 'hidden'),
																																																	"name" => array('label' => __('Name', $WCFM->text_domain), 'type' => 'text', 'class' => 'wcfm-text wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title'),
																																																	"value" => array('label' => __('Value(s):', $WCFM->text_domain), 'type' => 'select', 'attributes' => array( 'multiple' => 'multiple', 'style' => 'width: 60%;' ), 'class' => 'wcfm-select wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title'),
																																																	"is_visible" => array('label' => __('Visible on the product page', $WCFM->text_domain), 'type' => 'checkbox', 'value' => 'enable', 'class' => 'wcfm-checkbox wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title checkbox_title'),
																																																	"is_variation" => array('label' => __('Use as Variation', $WCFM->text_domain), 'type' => 'checkbox', 'value' => 'enable', 'class' => 'wcfm-checkbox wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title checkbox_title wcfm_ele variable variable-subscription'),
																																																	"tax_name" => array('type' => 'hidden'),
																																																	"is_taxonomy" => array('type' => 'hidden')
																																															))
																																										)) );
							}
						?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			<?php } ?>
			
			<?php if( $allow_attribute = apply_filters( 'wcfm_is_allow_variable', true ) ) { ?>
			<!-- collapsible 8 -->
			<div class="page_collapsible products_manage_variations variable variations variable-subscription" id="wcfm_products_manage_form_variations_head"><?php _e('Variations', $WCFM->text_domain); ?><span></span></div>
			<div class="wcfm-container variable variable-subscription">
				<div id="wcfm_products_manage_form_variations_expander" class="wcfm-content">
					<?php
					 $WCFM->wcfm_fields->wcfm_generate_form_field( array(  
																																"variations" => array('label' => __('Variations', $WCFM->text_domain) , 'type' => 'multiinput', 'class' => 'wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title', 'value' => $variations, 'options' => 
																																		apply_filters( 'wcfm_product_manage_fields_variations', array(
																																		"id" => array('type' => 'hidden', 'class' => 'variation_id'),
																																		"enable" => array('label' => __('Enable', $WCFM->text_domain), 'type' => 'checkbox', 'value' => 'enable', 'class' => 'wcfm-checkbox wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title checkbox_title'),
																																		"image" => array('label' => __('Image', $WCFM->text_domain), 'type' => 'upload', 'class' => 'wcfm-text wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title'),
																																		"sku" => array('label' => __('SKU', $WCFM->text_domain), 'type' => 'text', 'class' => 'wcfm-text wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title'),
																																		"regular_price" => array('label' => __('Regular Price', $WCFM->text_domain) . '(' . get_woocommerce_currency_symbol() . ')', 'type' => 'text', 'class' => 'wcfm-text wcfm_ele variable', 'label_class' => 'wcfm_title wcfm_ele variable'),
																																		"sale_price" => array('label' => __('Sale Price', $WCFM->text_domain) . '(' . get_woocommerce_currency_symbol() . ')', 'type' => 'text', 'class' => 'wcfm-text wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title wcfm_ele variable variable-subscription'),
																																		"manage_stock" => array('label' => __('Manage Stock', $WCFM->text_domain), 'type' => 'checkbox', 'value' => 'enable', 'value' => 'enable', 'class' => 'wcfm-checkbox wcfm_ele variable variable-subscription variation_manage_stock_ele', 'label_class' => 'wcfm_title checkbox_title'),
																																		"stock_qty" => array('label' => __('Stock Qty', $WCFM->text_domain) , 'type' => 'number', 'class' => 'wcfm-text wcfm_ele variable variable-subscription variation_non_manage_stock_ele', 'label_class' => 'wcfm_title variation_non_manage_stock_ele'),
																																		"backorders" => array('label' => __('Allow Backorders?', $WCFM->text_domain) , 'type' => 'select', 'options' => array('no' => __('Do not Allow', $WCFM->text_domain), 'notify' => __('Allow, but notify customer', $WCFM->text_domain), 'yes' => __('Allow', $WCFM->text_domain)), 'class' => 'wcfm-select wcfm_ele variable variable-subscription variation_non_manage_stock_ele', 'label_class' => 'wcfm_title variation_non_manage_stock_ele'),
																																		"stock_status" => array('label' => __('Stock status', $WCFM->text_domain) , 'type' => 'select', 'options' => array('instock' => __('In stock', $WCFM->text_domain), 'outofstock' => __('Out of stock', $WCFM->text_domain)), 'class' => 'wcfm-select wcfm_ele variable variable-subscription', 'label_class' => 'wcfm_title'),
																																		"attributes" => array('type' => 'hidden')
																																), $variations, $variation_shipping_option_array, $variation_tax_classes_options ) )
																											) );
					?>
				</div>
			</div>
			<!-- end collapsible -->
			<div class="wcfm_clearfix"></div>
			<?php } ?>
			
			<?php if( $allow_advanced = apply_filters( 'wcfm_is_allow_linked', true ) ) { ?>
				<!-- collapsible 9 - Linked Product -->
				<div class="page_collapsible products_manage_linked simple variable external grouped" id="wcfm_products_manage_form_linked_head"><?php _e('Linked Products', $WCFM->text_domain); ?><span></span></div>
				<div class="wcfm-container simple variable external grouped">
					<div id="wcfm_products_manage_form_linked_expander" class="wcfm-content">
						<?php
						$WCFM->wcfm_fields->wcfm_generate_form_field( apply_filters( 'product_manage_fields_linked', array(  
																																																"upsell_ids" => array('label' => __('Up-sells', $WCFM->text_domain) , 'type' => 'select', 'attributes' => array( 'multiple' => 'multiple', 'style' => 'width: 60%;' ), 'class' => 'wcfm-select wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title', 'options' => $products_array, 'value' => $upsell_ids, 'hints' => __( 'Up-sells are products which you recommend instead of the currently viewed product, for example, products that are more profitable or better quality or more expensive.', $WCFM->text_domain )),
																																																"crosssell_ids" => array('label' => __('Cross-sells', $WCFM->text_domain) , 'type' => 'select', 'attributes' => array( 'multiple' => 'multiple', 'style' => 'width: 60%;' ), 'class' => 'wcfm-select wcfm_ele simple variable external grouped booking', 'label_class' => 'wcfm_title', 'options' => $products_array, 'value' => $crosssell_ids, 'hints' => __( 'Cross-sells are products which you promote in the cart, based on the current product.', $WCFM->text_domain ))
																																											)) );
						?>
					</div>
				</div>
				<!-- end collapsible -->
				<div class="wcfm_clearfix"></div>
			<?php } ?>
			
			<?php do_action( 'end_wcfm_products_manage', $product_id ); ?>
			
			<div class="wcfm-message" tabindex="-1"></div>
			
			<div id="wcfm_products_simple_submit">
				<input type="submit" name="submit-data" value="<?php if( current_user_can( 'publish_products' ) ) { _e( 'Submit', $WCFM->text_domain ); } else { _e( 'Submit for Review', $WCFM->text_domain ); } ?>" id="wcfm_products_simple_submit_button" />
				<?php if( ( isset( $wp->query_vars['wcfm-products-manage'] ) && empty( $wp->query_vars['wcfm-products-manage'] ) ) || ( isset( $wp->query_vars['wcfm-products-manage'] ) && !empty( $wp->query_vars['wcfm-products-manage'] ) && ( get_post_status( $wp->query_vars['wcfm-products-manage'] ) == 'draft' ) ) ) { ?>
				<input type="submit" name="draft-data" value="<?php _e( 'Draft', $WCFM->text_domain ); ?>" id="wcfm_products_simple_draft_button" />
				<?php } ?>
			</div>
			
		</form>
		<?php
		do_action( 'after_wcfm_products_manage' );
		?>
	</div>
</div>