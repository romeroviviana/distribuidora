<?php
/**
 * Sauna Lite Theme Customizer
 *
 * @package Sauna Lite
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function sauna_lite_customize_register( $wp_customize ) {

	//add home page setting pannel
	$wp_customize->add_panel( 'sauna_lite_panel_id', array(
	    'priority' => 10,
	    'capability' => 'edit_theme_options',
	    'theme_supports' => '',
	    'title' => __( 'Theme Settings', 'sauna-lite' ),
	    'description' => __( 'Description of what this panel does.', 'sauna-lite' )
	) );

	//home page slider
	$wp_customize->add_section( 'sauna_lite_slidersettings' , array(
    	'title'      => __( 'Slider Settings', 'sauna-lite' ),
		'priority'   => 30,
		'panel' => 'sauna_lite_panel_id'
	) );

	for ( $count = 1; $count <= 4; $count++ ) {

		// Add color scheme setting and control.
		$wp_customize->add_setting( 'sauna_lite_slidersettings-page-' . $count, array(
			'default'           => '',
			'sanitize_callback' => 'absint'
		) );

		$wp_customize->add_control( 'sauna_lite_slidersettings-page-' . $count, array(
			'label'    => __( 'Select Slide Image Page', 'sauna-lite' ),
			'section'  => 'sauna_lite_slidersettings',
			'type'     => 'dropdown-pages'
		) );

	}
	
	//home page setting pannel
	$wp_customize->add_section('sauna_lite_footer_section',array(
		'title'	=> __('Copyright','sauna-lite'),
		'description'	=> '',
		'priority'	=> null,
		'panel' => 'sauna_lite_panel_id',
	));
	
	$wp_customize->add_setting('sauna_lite_footer_copy',array(
		'default'	=> '',
		'sanitize_callback'	=> 'wp_kses_post',
	));
	
	$wp_customize->add_control('sauna_lite_footer_copy',array(
		'label'	=> __('Copyright Text','sauna-lite'),
		'section'	=> 'sauna_lite_footer_section',
		'type'		=> 'textarea'
	));
	/** home page setions end here**/	
}
add_action( 'customize_register', 'sauna_lite_customize_register' );


/**
 * Singleton class for handling the theme's customizer integration.
 *
 * @since  1.0.0
 * @access public
 */
final class sauna_lite_customize {

	/**
	 * Returns the instance.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return object
	 */
	public static function get_instance() {

		static $instance = null;

		if ( is_null( $instance ) ) {
			$instance = new self;
			$instance->setup_actions();
		}

		return $instance;
	}

	/**
	 * Constructor method.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function __construct() {}

	/**
	 * Sets up initial actions.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function setup_actions() {

		// Register panels, sections, settings, controls, and partials.
		add_action( 'customize_register', array( $this, 'sections' ) );

		// Register scripts and styles for the controls.
		add_action( 'customize_controls_enqueue_scripts', array( $this, 'enqueue_control_scripts' ), 0 );
	}

	/**
	 * Sets up the customizer sections.
	 *
	 * @since  1.0.0
	 * @access public
	 * @param  object  $manager
	 * @return void
	 */
	public function sections( $manager ) {

		// Load custom sections.
		require_once( trailingslashit( get_template_directory() ) . '/inc/section-pro.php' );

		// Register custom section types.
		$manager->register_section_type( 'sauna_lite_customize_Section_Pro' );

		// Register sections.
		$manager->add_section(
			new sauna_lite_customize_Section_Pro(
				$manager,
				'example_1',
				array(
					'title'    => esc_html__( 'Sauna Pro', 'sauna-lite' ),
					'pro_text' => esc_html__( 'Go Pro',         'sauna-lite' ),
					'pro_url'  => 'http://themescaliber.com/premium/sauna-spa-wordpress-theme/'
				)
			)
		);
	}

	/**
	 * Loads theme customizer CSS.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return void
	 */
	public function enqueue_control_scripts() {

		wp_enqueue_script( 'sauna-lite-customize-controls', trailingslashit( get_template_directory_uri() ) . '/js/customize-controls.js', array( 'customize-controls' ) );

		wp_enqueue_style( 'sauna-lite-customize-controls', trailingslashit( get_template_directory_uri() ) . '/css/customize-controls.css' );
	}
}

// Doing this customizer thang!
sauna_lite_customize::get_instance();