<?php
/**
 * The template for displaying home page.
 *
 * Template Name: Custom Home Page
 *
 * @package Sauna Lite
 */

get_header(); ?>

<?php /** slider section **/ ?>
	<?php
		// Get pages set in the customizer (if any)
		$pages = array();
		for ( $count = 1; $count <= 5; $count++ ) {
			$mod = intval( get_theme_mod( 'sauna_lite_slidersettings-page-' . $count ) );
			if ( 'page-none-selected' != $mod ) {
				$pages[] = $mod;
			}
		}
		if( !empty($pages) ) :
			$args = array(
				'posts_per_page' => 5,
				'post_type' => 'page',
				'post__in' => $pages,
				'orderby' => 'post__in'
			);
			$query = new WP_Query( $args );
			if ( $query->have_posts() ) :
				$count = 1;
				?>
				<div class="slider-main">
					<div id="slider" class="nivoSlider">
						<?php
							$sauna_lite_n = 0;
						while ( $query->have_posts() ) : $query->the_post();
								
								$sauna_lite_n++;
								$sauna_lite_slideno[] = $sauna_lite_n;
								$sauna_lite_slidetitle[] = get_the_title();
								$sauna_lite_slidelink[] = esc_url(get_permalink());
								?>
									<img src="<?php the_post_thumbnail_url('full'); ?>" title="#slidecaption<?php echo esc_attr( $sauna_lite_n ); ?>" />
								<?php
							$count++;
						endwhile;
							wp_reset_postdata();
						?>
					</div>

					<?php
					$sauna_lite_k = 0;
				    foreach( $sauna_lite_slideno as $sauna_lite_sln ){ ?>
						<div id="slidecaption<?php echo esc_attr( $sauna_lite_sln ); ?>" class="nivo-html-caption">
							<div class="slide-cap  ">
								<div class="container">
									<h2><?php echo esc_html( $sauna_lite_slidetitle[$sauna_lite_k] ); ?></h2>
									<a class="read-more" href="<?php echo esc_url( $sauna_lite_slidelink[$sauna_lite_k] ); ?>"><?php _e( 'Learn More','sauna-lite' ); ?></a>
								</div>
							</div>
						</div>
			    	<?php $sauna_lite_k++;
					} ?>
				</div>
			<?php else : ?>
					<div class="header-no-slider"></div>
				<?php
			endif;
		else : ?>
				<div class="header-no-slider"></div>
			<?php
		endif;
	?>

<?php /*--OUR SERVICES--*/?>
<section id="our-services">
	<div class="innerlightbox">
		<div class="container">
			<div class="col-md-8">
			<?php if ( have_posts() ) : ?>
                <?php while ( have_posts() ) : the_post(); ?>
					<div class="page-box">
						<div class="box-image">
							<?php 
                        if(has_post_thumbnail()) { 
                          the_post_thumbnail(); 
                        }
						else{
							?>
							<a href="<?php echo esc_url( get_permalink() ); ?>"><img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/no-thumbnail.jpg"></a>
							<?php
						}
                      ?>
		          		</div>
						<div class="box-content">
							<h4><a href="<?php echo esc_url( get_permalink() ); ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h4>
							<?php the_excerpt();?>
							<a class="r_button hvr-sweep-to-right read-more"  href="<?php echo esc_url( get_permalink() ); ?>" title="<?php esc_attr_e('READ More&hellip;','sauna-lite'); ?>"><?php _e('READ More&hellip;','sauna-lite'); ?></a>
						</div>
						<div class="clearfix"></div>      
		        	</div>
                <?php endwhile;
		        	wp_reset_postdata();
		        ?>
				<div class="navigation">
            <?php
                // Previous/next page navigation.
                the_posts_pagination( array(
                    'prev_text'          => __( 'Previous page', 'sauna-lite' ),
                    'next_text'          => __( 'Next page', 'sauna-lite' ),
                    'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'sauna-lite' ) . ' </span>',
                ) );
            ?>
            </div>
            <?php else : ?>
                <?php get_template_part( 'no-results', 'archive' ); 
            ?>
            <?php endif; 
            ?>  
			</div>
			<div class="col-md-3 col-md-offset-1">
				<?php get_sidebar();?>
			</div>
  		</div> 
    </div>
</section>
	
<?php get_footer(); ?>