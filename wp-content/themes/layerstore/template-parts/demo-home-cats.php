<?php
  $second_cat  = get_terms( 'product_cat' );
  if ( $second_cat != '') :
  // Random order.
	shuffle( $second_cat );
	// Get first $max items.
	$terms = array_slice( $second_cat, 0, 1 );
  $random_term = '';
  foreach ( $terms as $term ) {
		$random_term[] = $term->slug;
	} 
  if ( $random_term ) :
    ?> 
    <div class="top-area row no-gutter">      
        <div class="carousel slide" id="myCarousel">
          <div class="carousel-inner">
                <?php $i=0;
                  $args = array( 'post_type' => 'product', 'posts_per_page' => 6, 'product_cat' => $random_term[0] );
                  $loop = new WP_Query( $args );
                  while ( $loop->have_posts() ) : $loop->the_post(); global $product; ?>
                  <div class="item <?php if( $i == 1 ) echo 'active'; ?> no-gutter">
                    <div class="top-carousel-inner col-xs-4">   
                      <a href="<?php echo get_permalink( $loop->post->ID ) ?>" title="<?php echo esc_attr($loop->post->post_title ? $loop->post->post_title : $loop->post->ID); ?>">
                        <?php // woocommerce_show_product_sale_flash( $post, $product ); ?>
                          <div class="top-grid-img">  
                            <?php if (has_post_thumbnail( $loop->post->ID )) echo get_the_post_thumbnail($loop->post->ID, 'maxstore-category'); else echo '<img src="'.woocommerce_placeholder_img_src().'" alt="Placeholder" width="300px" height="300px" />'; ?>
                          </div>
                          <div class="top-grid-heading text-center">
                            <h2><?php the_title(); ?></h2>
                            <span class="price"><?php echo $product->get_price_html(); ?></span>
                          </div>
                          <?php woocommerce_show_product_sale_flash( $post, $product ); ?>                    
                      </a>
                    </div>
                  </div>
                <?php $i++;?>
              <?php endwhile; ?> 
              <?php wp_reset_query(); ?>
          </div>
          <a class="left carousel-control" href="#myCarousel" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next"><i class="fa fa-chevron-right"></i></a>
        </div> 
    </div>
    <?php endif; ?>
  <?php endif; ?>