<?php
/**
 * The template for displaying Search Results pages.
 *
 * @package Sauna Lite
 */

get_header(); ?>

<div class="container">
    <div class="middle-align content_sidebar">
        <div class="col-md-9" id="content-aa">
            <div class="site-main" id="sitemain">
    			<?php if ( have_posts() ) : ?>
                    <h1 class="entry-title"><?php printf( __( 'Search Results for: %s', 'sauna-lite' ), '<span>' . esc_html( get_search_query() ) . '</span>' ); ?></h1>
                    <?php while ( have_posts() ) : the_post(); ?>
                        <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                        <?php the_excerpt(); ?>
                    <?php endwhile; ?>
                    <div class="clearfix"></div>
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
                    <?php get_template_part( 'no-results', 'search' ); ?>
                <?php endif; ?>
            </div>
            <div class="clear"></div>
        </div>
        <div class="col-md-3">
            <?php get_sidebar();?>
        </div>
    </div>
    <div class="clearfix"></div>
</div>

<?php get_footer(); ?>