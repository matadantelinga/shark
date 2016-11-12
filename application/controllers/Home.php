<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('shark_model', 'shark');
		$this->load->library('pagination');
	}

	public function index()
	{
		$this->load->view_public('index');
	}

	public function search()
	{
		$this->load->view_public('about');
	}

	public function about()
	{
		$this->load->view_public('about');
	}

	public function our_client($page)
	{
		$total_row = $this->shark->record_count('clients');

		$config['base_url']		= site_url('our_client');
		$config['total_rows']	= $total_row;
		$config['per_page']		= 5;
		$this->pagination->initialize($config);

		$data['client'] = $this->shark->fetch_data('clients', $config['per_page'], $page);
		$this->load->view_public('client-index', $data);
	}

	public function our_product($page)
	{
		$total_row = $this->shark->record_count('view_product');

		$config['base_url']		= site_url('our_product');
		$config['total_rows']	= $total_row;
		$config['per_page']		= 4;
		$this->pagination->initialize($config);

		$data['title'] = 'Our Products';
		$data['products'] = $this->shark->fetch_data('view_product', $config['per_page'], $page);
		$this->load->view_public('product-index', $data);
	}

	public function category_product($slug, $page)
	{
		$total_row = $this->shark->record_count('view_product');

		$config['base_url']		= site_url('category_product/'.$slug);
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

	public function news($page)
	{
		$total_row = $this->shark->record_count('articles');

		$config['base_url']		= site_url('news');
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

	public function support()
	{
		$this->load->view_public('support-npd');
	}

	public function aftersales()
	{
		$this->load->view_public('support-aftersales');
	}

	public function sales_team()
	{
		$data['sales'] = $this->shark->list_of_sales();
		$this->load->view_public('sales', $data);
	}

	public function cs_form()
	{
		$this->load->helper('form');
        $this->load->library('form_validation');

		$this->form_validation->set_rules('cs_name', 'name', 'required|min_length[10]');
        $this->form_validation->set_rules('cs_email', 'email', 'required|valid_email');
        $this->form_validation->set_rules('cs_phone', 'phone', 'numeric');
        $this->form_validation->set_rules('cs_addr', 'address', 'required');
        $this->form_validation->set_rules('cs_problem', 'problem', 'required');

		if($this->form_validation->run() == TRUE)
        {
			$this->load->library('email');
			$config = email_config();
			$this->email->initialize($config);
			$this->email->set_newline("\r\n");
			$this->email->from($_POST['cs_email'], $_POST['cs_name']);
			$this->email->to(get_option('opt_contact_email'));
			$this->email->subject('Pengaduan Konsumen');
			$this->email->message($_POST['cs_problem']);
			if($this->email->send())
			{
				$this->session->set_flashdata('success');
			}
			else
			{
				$this->session->set_flashdata('error');
			}
        }
        else
        {
            $this->load->view_public('cs-form');
        }
	}

	public function shark_career()
	{
		$data['careers'] = $this->db->get_where('careers', array('is_open'=>1))->result_array();
		$this->load->view_public('career', $data);
	}

	public function apply_career($slug)
	{
		$this->load->helper('form');
        $this->load->library('form_validation');

		$this->form_validation->set_rules('app_name', 'name', 'required|min_length[10]');
        $this->form_validation->set_rules('app_email', 'email', 'required|valid_email');
        $this->form_validation->set_rules('app_phone', 'phone', 'numeric');
        $this->form_validation->set_rules('app_addr', 'address', 'required');
        $this->form_validation->set_rules('app_problem', 'problem', 'required');

		if($this->form_validation->run() == TRUE)
        {
			$this->load->library('email');
			$config = email_config();
			$this->email->initialize($config);
			$this->email->set_newline("\r\n");
			$this->email->from($_POST['app_email'], $_POST['cs_name']);
			$this->email->to(get_option('opt_contact_email'));
			$this->email->subject('Job Applications');
			$this->email->message($_POST['app_problem']);
			if($this->email->send())
			{
				$this->session->set_flashdata('success');
			}
			else
			{
				$this->session->set_flashdata('error');
			}
        }
        else
        {
            $this->load->view_public('app-form');
        }
	}

	public function contact_us()
	{
		$this->load->helper('form');
        $this->load->library('form_validation');

		$this->form_validation->set_rules('contact_name', 'name', 'required|min_length[10]');
        $this->form_validation->set_rules('contact_email', 'email', 'required|valid_email');
        $this->form_validation->set_rules('contact_subject', 'subject', 'required');
        $this->form_validation->set_rules('contact_phone', 'phone', 'numeric');
        $this->form_validation->set_rules('contact_msg', 'message', 'required|min_length[10]');

        if($this->form_validation->run() == TRUE)
        {
			$this->load->library('email');
			$config = email_config();
			$this->email->initialize($config);
			$this->email->set_newline("\r\n");
			$this->email->from($_POST['contact_email'], $_POST['contact_name']);
			$this->email->to(get_option('opt_contact_email'));
			$this->email->subject($_POST['contact_subject']);
			$this->email->message($_POST['contact_msg']);
			if($this->email->send())
			{
				$this->session->set_flashdata('success');
			}
			else
			{
				$this->session->set_flashdata('error');
			}
        }
        else
        {
            $this->load->view_public('contact');
        }
	}

}
