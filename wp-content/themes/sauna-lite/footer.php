<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package Sauna Lite
 */
?>
    <div id="footer" class="copyright-wrapper">
    	<div class="container">
            <div class="footer-menu">
                <?php wp_nav_menu(array('theme_location' => 'footer')); ?>
            </div>
    		<div class="clearfix"></div> 
            <div class="copyright">
                <p><?php echo esc_html( get_theme_mod('sauna_lite_footer_copy','') ); ?></p>
                <p><a href="<?php echo esc_url('http://www.themescaliber.com'); ?>"><?php _e('WordPress Theme','sauna-lite'); ?></a> by <a href="<?php echo esc_url('http://www.themescaliber.com'); ?>"><?php _e('ThemesCaliber','sauna-lite'); ?></a></p>               
            </div><div class="clear"></div>  
        </div>
    </div>
    <?php wp_footer(); ?>
  </body>
</html>