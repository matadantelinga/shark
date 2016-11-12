<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Our_blog extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('shark_model', 'shark');
	}

	public function index($page=1)
	{
		$total_row = $this->shark->record_count('articles');

		$this->load->library('pagination');

		$config['base_url']		= site_url('our_blog/index');
		$config['total_rows']	= $total_row;
		$config['per_page']		= 4;
		$this->pagination->initialize($config);

		$data['posts'] = $this->shark->fetch_data('articles', $config['per_page'], $page);
		$this->load->view_public('blog-index', $data);
	}

	public function read($slug)
	{
		$data = (array) $this->shark->detail_of_article($slug);
		$this->load->view_public('blog-single', $data);
	}

}
