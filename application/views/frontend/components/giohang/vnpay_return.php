<?php
    ob_start();
if(!isset($_SESSION))
{
    session_start();
}
?>
        <?php
        require_once(APPPATH."/libraries/Config_vnpay.php");
        $vnp_SecureHash = $_GET['vnp_SecureHash'];
        $inputData = array();
        foreach ($_GET as $key => $value) {
            if (substr($key, 0, 4) == "vnp_") {
                $inputData[$key] = $value;
            }
        }
        unset($inputData['vnp_SecureHashType']);
        unset($inputData['vnp_SecureHash']);
        ksort($inputData);
        $i = 0;
        $hashData = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashData = $hashData . '&' . $key . "=" . $value;
            } else {
                $hashData = $hashData . $key . "=" . $value;
                $i = 1;
            }
        }

        //$secureHash = md5($vnp_HashSecret . $hashData);
		$secureHash = hash('sha256',$vnp_HashSecret . $hashData);
        ?>
        <!--Begin display -->

<section id="checkout-cart">
    <div class="container">
        <div class="col-md-12">
            <div class="wrapper overflow-hidden">
                <div class="checkout-content">
                    <div class="tks-header">
                        <h3 class="fa fa-check-circle"> Thông tin đơn hàng đã được gửi đến
                            <?php
                            if($this->session->userdata('info-customer')){
                                $data=$this->session->userdata('info-customer');
                                echo $data['email'];
                                $this->session->unset_userdata('info-customer');
                            }else{
                                if($this->session->userdata('sessionKhachHang')){
                                    $data=$this->session->userdata('sessionKhachHang');
                                    echo $data['email'];
                                }
                            }
                            ?>
                            . Qúy khách hãy đăng nhập gmail để kiểm tra thông tin đơn hàng.
                        </h3>
                    </div>
                    <div class="tks-content" style="min-height: 1px;
                    overflow: hidden;">
                        <div class="col-xs-12 col-sm-12 col-md-7 col-login-checkout" style="margin-bottom: 20px">
                            <table class="table tks-tabele-info-cus">
                                <thead>
                                <tr>
                                    <th colspan="2">Thông tin đơn hàng</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Mã đơn hàng:</td>
                                    <td><?php echo $_GET['vnp_TxnRef'] ?></td>
                                </tr>
                                <tr>
                                    <td>Số tiền:</td>
                                    <td><?=number_format($_GET['vnp_Amount']/100) ?> VNĐ</td>
                                </tr>
                                <tr>
                                    <td>Nội dung thanh toán:</td>
                                    <td><?php echo $_GET['vnp_OrderInfo'] ?></td>
                                </tr>
                                <tr>
                                    <td>Mã phản hồi (vnp_ResponseCode):</td>
                                    <td><?php echo $_GET['vnp_ResponseCode'] ?></td>
                                </tr>
                                <tr>
                                    <td>Mã GD Tại VNPAY:</td>
                                    <td><?php echo $_GET['vnp_TransactionNo'] ?></td>
                                </tr>
                                <tr>
                                    <td>Mã Ngân hàng:</td>
                                    <td><?php echo $_GET['vnp_BankCode'] ?></td>
                                </tr>
                                <tr>
                                    <td>Thời gian thanh toán:</td>
                                    <td><?php echo $_GET['vnp_PayDate'] ?></td>
                                </tr>
                                <tr>
                                    <td>Kết quả:</td>
                                    <td><?php
                                        if ($secureHash == $vnp_SecureHash) {
                                            if ($_GET['vnp_ResponseCode'] == '00') {
                                                $order_id = $_GET['vnp_TxnRef'];
                                                $money = $_GET['vnp_Amount']/100;
                                                $note = $_GET['vnp_OrderInfo'];
                                                $vnp_response_code = $_GET['vnp_ResponseCode'];
                                                $code_vnpay = $_GET['vnp_TransactionNo'];
                                                $code_bank = $_GET['vnp_BankCode'];
                                                $time = $_GET['vnp_PayDate'];
                                                $date_time = substr($time, 0, 4) . '-' . substr($time, 4, 2) . '-' . substr($time, 6, 2) . ' ' . substr($time, 8, 2) . ' ' . substr($time, 10, 2) . ' ' . substr($time, 12, 2);
                                                include(APPPATH."/config/database.php");
                                                $taikhoan = $data['fullname'];
                                                $sql = "SELECT * FROM payments WHERE order_id = '$order_id'";
                                                $conn = mysqli_connect("localhost:3307","root","","db_shop");
                                                $query = mysqli_query($conn, $sql);
                                                $row = mysqli_num_rows($query);

                                                if ($row > 0) {
                                                    $sql = "UPDATE payments SET order_id = '$order_id', money = '$money', note = '$note', vnp_response_code = '$vnp_response_code', code_vnpay = '$code_vnpay', code_bank = '$code_bank' WHERE order_id = '$order_id'";

                                                    mysqli_query($conn, $sql);
                                                } else {
                                                    $sql = "INSERT INTO payments(order_id, thanh_vien, money, note, vnp_response_code, code_vnpay, code_bank, time) VALUES ('$order_id', '$taikhoan', '$money', '$note', '$vnp_response_code', '$code_vnpay', '$code_bank','$date_time')";
                                                    mysqli_query($conn, $sql);
                                                }

                                                if($data){
                                                    $val = $data;
                                                    $list = $this->Morder->order_detail_customerid($val['id']);
                                                    $payment = "";
                                                    if ($list['payment'] == "1") {
                                                        $payment = "Thanh toán khi giao hàng (COD)";
                                                    } else {
                                                        $payment = "thanh toán online";
                                                    }

                                                    $data = array(
                                                        'order' => $list,
                                                        'customer' => $val,
                                                        'orderDetail' => $this->Morderdetail->orderdetail_order_join_product($list['id']),
                                                        'province' => $this->Mprovince->province_name($list['province']),
                                                        'district' => $this->Mdistrict->district_name($list['district']),
                                                        'priceShip' => $this->Mconfig->config_price_ship(),
                                                        'coupon' => $list['coupon'],
                                                        'payment' => $payment,

                                                    );
                                                    $this->data['customer']=$val;
                                                    $this->data['get']=$list;

                                                    $this->load->library('email');
                                                    $this->load->library('parser');
                                                    $this->email->clear();
                                                    $config['protocol']    = 'smtp';
                                                    $config['smtp_host']    = 'ssl://smtp.gmail.com';
                                                    $config['smtp_port']    = '465';
                                                    $config['smtp_timeout'] = '7';
                                                    $config['smtp_user']    = 'ducluongnhan@gmail.com';
                                                    $config['smtp_pass']    = 'Fireonfire123';
                                                    // mk trên la mat khau dung dung cua gmail, có thể dùng gmail hoac mat khau. Tao mat khau ung dung de bao mat tai khoan
                                                    $config['charset']    = 'utf-8';
                                                    $config['newline']    = "\r\n";
                                                    $config['wordwrap'] = TRUE;
                                                    $config['mailtype'] = 'html';
                                                    $config['validation'] = TRUE;
                                                    $this->email->initialize($config);
                                                    $this->email->from('ducluongnhan@gmail.com', 'Smart Store');
                                                    $list = array($val['email']);
                                                    $this->email->to($list);
                                                    $this->email->subject('Hệ thống Smart Store');
                                                    $body = $this->load->view('frontend/modules/email',$data,TRUE);
                                                    $this->email->message($body);
                                                    $this->email->send();

                                                    $datax = array('email' => '');
                                                    $idx= $this->session->userdata('id-info-customer');
                                                    $this->Mcustomer->customer_update($datax,$idx);
                                                    $this->session->unset_userdata('id-info-customer','money_check_coupon');
                                                }
                                                $this->data['title']='Smart Store.vn - Kết quả đơn hàng';
                                                $this->data['view']='thankyou';
                                                $this->load->view('frontend/layout',$this->data);

                                                echo '<script>
                                                        jQuery(document).ready(function (){
                                                            jQuery("#trangchu").hide();jQuery("#giohang").show()    
                                                        })</script>';

                                                echo "GD Thanh cong";
                                            } else {
                                                echo "GD Khong thanh cong";
                                            }
                                        } else {
                                            echo "Chu ky khong hop le";
                                        }
                                        ?></td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="btn-tks clearfix">
                        <button type="button" id="giohang" onclick="window.location.href='<?php echo base_url() ?>giohang/thankyou'" class="btn-next-checkout pull-left">Quay lại</button>
                        <button type="button" id="trangchu" onclick="window.location.href='<?php echo base_url() ?>trang-chu'" class="btn-next-checkout pull-left">Quay lại</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>