<?php
/**
 * The template for displaying image attachments.
 *
 * @package Sauna Lite
 */

get_header(); ?>

<div id="content-aa" class="container">
    <div class="middle-align">       
        <div class="col-md-9">
			<?php while ( have_posts() ) : the_post(); ?>    
                <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                    <div class="entry-content">
                        <h1><?php the_title();?></h1>  
                        <div class="entry-attachment">
                            <div class="attachment">
                                <?php sauna_lite_the_attached_image(); ?>
                            </div>
    
                            <?php if ( has_excerpt() ) : ?>
                                <div class="entry-caption">
                                    <?php the_excerpt(); ?>
                                </div>
                            <?php endif; ?>
                        </div>    
                        <?php
                            the_content();
                            wp_link_pages( array(
                                'before' => '<div class="page-links">' . __( 'Pages:', 'sauna-lite' ),
                                'after'  => '</div>',
                            ) );
                        ?>
                    </div>    
                    <?php edit_post_link( __( 'Edit', 'sauna-lite' ), '<footer class="entry-meta"><span class="edit-link">', '</span></footer>' ); ?>
                </article>    
                <?php
                    // If comments are open or we have at least one comment, load up the comment template
                    if ( comments_open() || '0' != get_comments_number() )
                        comments_template();
                ?>    
            <?php endwhile; // end of the loop. ?>
        </div>
        <div class="col-md-3">
            <?php get_sidebar();?>
        </div>
        <div class="clear"></div>
    </div>
</div>
<?php get_footer(); ?>