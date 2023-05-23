<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customer extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('backend/Mcustomer');
		$this->load->model('backend/Muser');
		$this->load->model('backend/Morders');
		if(!$this->session->userdata('sessionadmin'))
		{
			redirect('admin/user/login','refresh');
		}
		$this->data['user']=$this->session->userdata('sessionadmin');
		$this->data['com']='customer';
	}

	public function index()
	{
        $keyword = "";
        if (isset($_GET['query'])) {
            $keyword = $_GET['query'];
        }
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcustomer->customer_count($keyword);
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/customer?query=', $keyword);
		$this->data['list']=$this->Mcustomer->customer_all($limit, $first, $keyword);
		$this->data['view']='index';
		$this->data['title']='Danh sách khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function update($id)
	{
		$this->data['row']=$this->Mcustomer->customer_detail($id);
		$this->data['view']='update';
		$this->data['title']='Cập nhật khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function recyclebin()
	{
		$this->load->library('phantrang');
		$limit=10;
		$current=$this->phantrang->PageCurrent();
		$first=$this->phantrang->PageFirst($limit, $current);
		$total=$this->Mcustomer->customer_trash_count();
		$this->data['strphantrang']=$this->phantrang->PagePer($total, $current, $limit, $url='admin/customer/recyclebin', null);
		$this->data['list']=$this->Mcustomer->customer_trash($limit, $first);
		$this->data['view']='recyclebin';
		$this->data['title']='Thùng rác khách hàng';
		$this->load->view('backend/layout', $this->data);
	}

	public function trash($id)
	{
		$row = $this->Morders->orders_customerid($id);
		if(count($row) > 0)
		{
			$this->session->set_flashdata('error', 'Khách hàng đã đặt hàng, không thể xóa !');
			redirect('admin/customer','refresh');
		}
		else
		{
			$mydata= array('trash' => 0);
			$this->Mcustomer->customer_update($mydata, $id);
			$this->session->set_flashdata('success', 'Xóa khách hàng vào thùng rác thành công');
			redirect('admin/customer','refresh');
		}
	}
	public function restore($id)
	{
		$this->Mcustomer->customer_restore($id);
		$this->session->set_flashdata('success', 'Khôi phục khách hàng thành công');
		redirect('admin/customer/recyclebin','refresh');
	}

	public function delete($id)
	{
		$this->Mcustomer->customer_delete($id);
		$this->session->set_flashdata('success', 'Xóa khách hàng thành công');
		redirect('admin/customer/recyclebin','refresh');
	}

}