<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Our_products extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('shark_model', 'shark');
		$this->load->library('pagination');
	}

	public function index($page=1)
	{
		$total_row = $this->shark->record_count('view_product');

		$config['base_url']		= site_url('our_products/index');
		$config['total_rows']	= $total_row;
		$config['per_page']		= 4;
		$this->pagination->initialize($config);

		$data['title'] = 'Our Products';
		$data['products'] = $this->shark->fetch_data('view_product', $config['per_page'], $page);
		$this->load->view_public('product-index', $data);
	}

	public function category_product($page=1, $slug)
	{
		$total_row = $this->shark->record_count('view_product');

		$config['base_url']		= site_url('our_products/category_product');
		$config['total_rows']	= $total_row;
		$config['per_page']		= 4;
		$this->pagination->initialize($config);

		$data['title'] = str_replace('-', ' ', $slug);
		$data['products'] = $this->shark->fetch_data('view_product', $config['per_page'], $page, array('col'=>'category_slug', 'con'=>$slug));
		$this->load->view_public('product-index', $data);
	}

	public function detail_product($slug)
	{
		$data = (array) $this->shark->detail_of_product($slug);
		$data['parts'] = $this->shark->list_of_parts($data['prod_id']);
		$data['meta_title'] = $data['prod_name'];
		$data['meta_type'] = 'Product';
		$data['meta_image'] = base_url('uploads/product/'.$data['prod_image']);
		$data['meta_description'] = $data['prod_desc'];
		$this->load->view_public('product-single', $data);
	}

}
