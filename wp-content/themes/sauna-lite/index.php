<?php
/**
 * The template for displaying home page.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package Sauna Lite
 */

get_header(); ?>


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
		        
                <?php endwhile; ?>
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