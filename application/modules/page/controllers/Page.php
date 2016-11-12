<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Page extends MX_Controller{

    public function __construct()
    {
        parent::__construct();
        if(!$this->ion_auth->logged_in())
        {
            redirect('login');
        }
        $this->breadcrumbs->push('<i class="fa fa-home"></i>', '/dashboard');
        $this->load->model('page_model', 'partner');
    }

    public function index()
    {
        $this->breadcrumbs->push('All Pages', '/');
        $data['content'] = $this->load->view('pages', '', TRUE);
        $this->load->view_admin('template', $data);
    }

    private function _get_button($id)
    {
        $button = '<div class="btn btn-group">';
        $button .= '<a class="btn btn-link" title="edit" href="'.site_url('partner/edit/'.$id).'"><i class="fa fa-edit"></i></a>';
        $button .= '<a class="btn btn-link btn-del" title="delete" href="'.site_url('partner/delete/'.$id).'"><i class="fa fa-trash"></i></a>';
        $button .= '</div>';
        return $button;
    }

    public function ajax_grid()
    {
		$list = $this->category->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $category)
        {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $category->category_name;
            $row[] = $category->category_desc;
            $row[] = ($category->is_show == 1) ? '<label class="label label-info">Yes</label>' : '<label class="label label-danger">No</label>';
            $row[] = $this->_get_button($category->category_id);

            $data[] = $row;
        }

        $output = array(
			'draw' => $_POST['draw'],
			'recordsTotal' => $this->category->count_all(),
			'recordsFiltered' => $this->category->count_filtered(),
			'data' => $data,
		);
        echo json_encode($output);
    }

    public function submit($id=null)
    {
        // $this->load->helper('form');
        // $this->load->library('form_validation');
        // $this->breadcrumbs->push('All Pages', '/pages');
        //
        // if(empty($id))
        // {
        //     $this->breadcrumbs->push('Add page', '/');
        //     $data = array(
        //         'page_id' => '',
        //         'page_title' => '',
        //         'page_slug' => '',
        //         'page_content' => '',
        //         'page_layout' => 'default',
        //         'page_parent' => '',
        //         'page_status' => 'publish',
        //         'page_banner' => '',
        //     );
        // }
        // else
        // {
        //     $this->breadcrumbs->push('Edit page', '/');
        //     $data = (array) $this->category->get_detail_category($id);
        // }
        //
        // $this->form_validation->set_rules('page_title', 'page title', 'required');
        // $this->form_validation->set_rules('page_content', 'page content', 'required');
        //
        // if($this->form_validation->run() == TRUE)
        // {
        //     $save = array(
        //         'category_id' => $id,
        //         'category_name' => $this->input->post('category_name'),
        //         'category_slug' => $this->input->post('category_slug'),
        //         'category_desc' => $this->input->post('category_desc'),
        //         'category_term' => 'product',
        //         'is_show' => (bool) $this->input->post('is_show'),
        //     );
        //     $this->category->submit_form_data($save);
        //     redirect('product_categories');
        // }
        // else
        // {
        //     $data['layouts'] =  array_diff(scandir('./themes/shark'), array('.', '..'));
        //     $data['content'] = $this->load->view('form-page', $data, TRUE);
        //     $this->load->view_admin('template', $data);
        // }
        // //readdir
        //$cc = array();
        $cumi = array_diff(scandir('./themes/shark'), array('.', '..'));
        echo '<pre>';
        print_r($cumi);
        echo '</pre>';
    }

    public function delete($id)
    {
        $this->category->delete_category($id);
        $this->session->set_flashdata('message', 'Success, Product category has been deleted!');
        redirect('product_categories');
    }

}
