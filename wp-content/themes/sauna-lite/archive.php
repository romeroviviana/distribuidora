<?php
/**
 * The template for displaying Archive pages.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * @package Sauna Lite
 */

get_header(); ?>
 
<div class="container">
    <div class="middle-align content_sidebar">
        <div class="col-md-9" id="content-aa">
            <?php if ( have_posts() ) : ?>
                <header>
                    <h1 class="page-title">
                        <?php
                            the_archive_title( '<h1 class="page-title">', '</h1>' );
                            the_archive_description( '<div class="taxonomy-description">', '</div>' );
                        ?>
                    </h1>
                </header>
                <?php /* Start the Loop */ ?>
                <?php 
                    while ( have_posts() ) : the_post(); ?>

                        <h2><a href="<?php echo esc_url( get_permalink() ); ?>"><?php the_title(); ?></a></h2>
                        <p><?php the_excerpt(); ?></p>

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
                <?php get_template_part( 'no-results', 'archive' ); ?>
            <?php endif; ?>
        </div>
        <div class="col-md-3">
            <?php dynamic_sidebar('sidebar-1');?>
        </div>
        <div class="clear"></div>
    </div>
</div>

<?php get_footer(); ?>