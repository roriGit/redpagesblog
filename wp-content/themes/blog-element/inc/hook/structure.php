<?php
/**
 * Theme functions related to structure.
 *
 * This file contains structural hook functions.
 *
 * @package Blog Element
 */

if ( ! function_exists( 'blog_element_doctype' ) ) :
	/**
	 * Doctype Declaration.
	 *
	 * @since 1.0.0
	 */
function blog_element_doctype() {
	?><!DOCTYPE html> <html <?php language_attributes(); ?>><?php
}
endif;

add_action( 'blog_element_action_doctype', 'blog_element_doctype', 10 );


if ( ! function_exists( 'blog_element_head' ) ) :
	/**
	 * Header Codes.
	 *
	 * @since 1.0.0
	 */
function blog_element_head() {
	?>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
		<link rel="pingback" href="<?php echo esc_url( get_bloginfo( 'pingback_url' ) ); ?>">
	<?php endif;
}
endif;
add_action( 'blog_element_action_head', 'blog_element_head', 10 );

if ( ! function_exists( 'blog_element_page_start' ) ) :
	/**
	 * Add Skip to content.
	 *
	 * @since 1.0.0
	 */
	function blog_element_page_start() {
	?><div id="page" class="site"><a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'blog-element' ); ?></a><?php
	}
endif;

add_action( 'blog_element_action_before', 'blog_element_page_start', 10 );

if ( ! function_exists( 'blog_element_header_start' ) ) :
	/**
	 * Header Start.
	 *
	 * @since 1.0.0
	 */
	function blog_element_header_start() { ?>
		
		<header id="masthead" class="site-header" role="banner"><?php
	}
endif;
add_action( 'blog_element_action_before_header', 'blog_element_header_start' );

if ( ! function_exists( 'blog_element_header_end' ) ) :
	/**
	 * Header Start.
	 *
	 * @since 1.0.0
	 */
	function blog_element_header_end() {

		?>
		</header> <!-- header ends here --><?php
	}
endif;
add_action( 'blog_element_action_header', 'blog_element_header_end', 15 );

if ( ! function_exists( 'blog_element_content_start' ) ) :
	/**
	 * Header End.
	 *
	 * @since 1.0.0
	 */
	function blog_element_content_start() { 
	?>
	<div id="content" class="site-content">
		<div class="custom-header wrapper">
			<div class="custom-header-media">
				<?php the_custom_header_markup(); ?>
			</div><!-- .custom-header-media -->
		</div><!-- .custom-header -->
	<?php 

	}
endif;

add_action( 'blog_element_action_before_content', 'blog_element_content_start', 10 );

if ( ! function_exists( 'blog_element_footer_start' ) ) :
	/**
	 * Footer Start.
	 *
	 * @since 1.0.0
	 */
	function blog_element_footer_start() {
		if( !(is_home() || is_front_page()) ){
			echo '</div>';
		} ?>
		</div>
		<footer id="colophon" class="site-footer" role="contentinfo">
			<?php
	}
endif;
add_action( 'blog_element_action_before_footer', 'blog_element_footer_start' );

if ( ! function_exists( 'blog_element_footer_end' ) ) :
	/**
	 * Footer End.
	 *
	 * @since 1.0.0
	 */
	function blog_element_footer_end() {?>
		</footer><?php
	}
endif;
add_action( 'blog_element_action_after_footer', 'blog_element_footer_end' );
