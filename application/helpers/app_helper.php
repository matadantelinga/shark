<?php defined('BASEPATH') OR exit('No direct script access allowed');

if (!function_exists('login_data'))
{
    function login_data($field)
    {
        $CI	=& get_instance();
        $result	=  $CI->ion_auth->user()->row();
        return $result->$field;
    }
}

if(!function_exists('asset_url'))
{
    function asset_url($param)
    {
        $the_path = base_url('themes/'.$param.'/assets/');
        echo $the_path;
    }
}

if (!function_exists('menu_active'))
{
    function menu_active($param)
    {
        $CI =& get_instance();
        $segment = $CI->uri->segment(1);
        $active = ($segment == $param) ? 'active' : '';
        echo $active;
    }
}

if (!function_exists('post_excerpt'))
{
    function post_excerpt($text)
    {
        $excerpt = strip_tags($text);
        if (str_word_count($text, 0) > 100)
        {
          $words    = str_word_count($excerpt, 2);
          $post     = array_keys($words);
          $excerpt  = substr($excerpt, 0, $post[100]) . '...';
        }
        return $excerpt;
    }
}

if (!function_exists('directory_map'))
{
    function directory_map()
    {
        $dir = './themes/shark';
        $layouts = array_diff(scandir($dir), array('.', '..'));
        return $layouts;
    }
}

if (!function_exists('site_option'))
{
    function site_option($param)
    {
        $CI =& get_instance();
        $CI->load->model('setting/setting_model', 'settings');
        $option = $CI->settings->get_option($param);
        echo $option;
    }
}

if (!function_exists('get_option'))
{
    function get_option($param)
    {
        $CI =& get_instance();
        $CI->load->model('setting/setting_model', 'settings');
        $option = $CI->settings->get_option($param);
        return $option;
    }
}

if( !function_exists( 'socialmedia_navs' ) ){
	function socialmedia_navs() {
		return array(
			'opt_facebook_url' => 'fa fa-facebook',
			'opt_twitter_url' => 'fa fa-twitter',
            'opt_instagram_url' => 'fa fa-instagram',
            'opt_gplus_url' => 'fa fa-google-plus',
			'opt_linkedin_url' => 'fa fa-linkedin',
			'opt_youtube_url' => 'fa fa-youtube',
		);
	}
}

if(!function_exists('format_dmy'))
{
    function format_dmy($date)
    {
    	return strftime("%d-%m-%Y", strtotime($date));
    }
}

if(!function_exists('format_ymd'))
{
    function format_ymd($date)
    {
    	return strftime("%Y-%m-%d", strtotime($date));
    }
}

if (!function_exists('product_categories'))
{
    function product_categories()
    {
        $CI =& get_instance();
        $CI->load->model('product/category_model', 'product');
        $products = $CI->product->get_all_category();
        return $products;
    }
}

if (!function_exists('email_config'))
{
    function email_config()
    {
        if(get_option('opt_email_protocol') == 'smtp')
        {
            $config['protocol']     = 'smtp';
            $config['useragent']    = 'Web Contact Form';
            $config['smtp_host']    = get_option('opt_smtp_host');
            $config['smtp_port']    = get_option('opt_smtp_port');
            $config['smtp_user']    = get_option('opt_smtp_user');
            $config['smtp_pass']    = get_option('opt_smtp_pass');
        }
        else
        {
            $config['protocol']     = 'mail';
        }
        $config['mailtype'] = 'html';
        $config['charset']  = 'utf-8';
        $config['wordwrap'] = TRUE;

        return $config;
    }
}
