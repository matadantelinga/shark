<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Contact_us extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('shark_model', 'shark');
	}

	public function index()
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

	public function send_email($message)
	{
        $this->load->library('email');
        $config = Array(
		    'protocol'        => 'smtp',
		    'smtp_host'       => 'ssl://smtp.googlemail.com',
		    'smtp_port'       => 465,
		    'smtp_user'       => $this->config->item('username'),
		    'smtp_pass'       => $this->config->item('password'),
		    'smtp_timeout'    => '4',
		    'mailtype'        => 'html',
		    'charset'         => 'iso-8859-1',
            'wordwrap'        => TRUE
		);
        $this->email->initialize($config);
		$this->email->set_newline("\r\n");
        $this->email->from($message['from_email'], $message['from_name']);
		$this->email->to('shark@gmail.com');
		$this->email->subject('Shark.co.id Contact Form');
		$this->email->message($message['content']);
		$this->email->send();

	}

}
