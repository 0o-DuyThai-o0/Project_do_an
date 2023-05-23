<?php 
defined('BASEPATH') OR exit('No direct script access allowed'); 
?>
<?php
require_once(APPPATH."/libraries/Config_vnpay.php");
if (isset($_GET['vnp_SecureHash'])) {
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
}
?>
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
                                    <th colspan="2">Thông tin thanh toán nhận hàng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Khách hàng :</td>
                                    <td><?php echo $get['fullname'] ?></td>
                                </tr>
                                <tr>
                                    <td>Số điện thoại :</td>
                                    <td><?php echo $get['phone'] ?></td>
                                </tr>
                                <tr>
                                    <td>Địa chỉ thanh toán :</td>
                                    <td><?php echo $get['address'] ?>, <?php echo $this->Mdistrict->district_name($get['district'] )?>, <?php echo $this->Mprovince->province_name($get['province'] )?></td>
                                </tr>
                                <?php if($get['payment'] == "2") { echo '
                                <tr>
                                    <td>Mã đơn hàng:</td>
                                    <td>'.$_GET['vnp_TxnRef'].'</td>
                                </tr>
                                <tr>
                                    <td>Số tiền:</td>
                                    <td>'.number_format($_GET['vnp_Amount']/100).' VNĐ</td>
                                </tr>
                                <tr>
                                    <td>Nội dung thanh toán:</td>
                                    <td>'.$_GET['vnp_OrderInfo'].'</td>
                                </tr>
                                <tr>
                                    <td>Mã phản hồi (vnp_ResponseCode):</td>
                                    <td>'.$_GET['vnp_ResponseCode'].'</td>
                                </tr>
                                <tr>
                                    <td>Mã GD Tại VNPAY:</td>
                                    <td>'.$_GET['vnp_TransactionNo'].'</td>
                                </tr>
                                <tr>
                                    <td>Mã Ngân hàng:</td>
                                    <td>'.$_GET["vnp_BankCode"].'</td>
                                </tr>
                                <tr>
                                    <td>Thời gian thanh toán:</td>
                                    <td>'.$_GET['vnp_PayDate'].'</td>
                                </tr>
                                <tr>
                                    <td>Kết quả:</td>
                                    <td>';
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
                                                $taikhoan = $data['fullname'];
                                                $id = $get["id"];
                                                $status = 5;
                                                $myData= array('status' => $status);
                                                $this->Morder->order_update($myData, $id);

                                                echo "GD Thanh cong";
                                            } else {
                                                echo "GD Khong thanh cong";
                                            }
                                        } else {
                                            echo "Chu ky khong hop le";
                                        } echo '</td>
                                </tr>';
                                } ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-5 products-detail">
                        <div class="no-margin-table" style="width: 95%; float: right;">
                            <table class="table" style="color: #333;">
                                <thead>
                                    <tr>
                                        <th colspan="3" style="font-weight: 600;">Thông tin đơn hàng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr style="background: #fafafa; color: #333;" class="text-transform font-weight-600">
                                        <td>Sản phẩm</td>
                                        <td class="text-center">Số lượng</td>
                                        <td class="text-center">Giá</td>
                                        <td class="text-center">Tổng</td>
                                    </tr>
                                    <?php
                                    $data=$this->Morderdetail->orderdetail_order($get['id']);
                                    $money=0;
                                    $total2=0;                                   
                                    foreach ($data as $value) :
                                        $row = $this->Mproduct->product_detail_id($value['productid']);
                                        ?>
                                        <tr>
                                            <td><?php echo $row['name']; ?></td>
                                            <td class="text-center"><?php echo $value['count']; ?></td>
                                            <td class="text-center">    
                                                <?php echo number_format($value['price']);?>
                                            </td>
                                            <td><?php echo number_format($value['count'] * $value['price']); ?> VNĐ</td>
                                            <?php $total=$value['count'] * $value['price'];
                                            $total2+=$total;?>

                                        </tr>
                                    <?php endforeach; ?>
                                    <tr style="background: #fafafa">
                                        <td colspan="3">Tổng cộng :</td>
                                        <td class="text-center">
                                            <?php 
                                            echo number_format($total2);
                                            ?> VNĐ
                                        </td>
                                    </tr>
                                    <tr style="background: #fafafa">
                                        <td colspan="3">Vận chuyển</td>
                                        <td class="text-center"><?php echo number_format($get['price_ship']).' VNĐ'; ?></td>
                                    </tr>
                                    <?php 
                                    if($get['coupon'] != 0){
                                        echo '<tr style="background: #fafafa">
                                        <td colspan="3">Voucher</td>
                                        <td class="text-center">'.number_format(-$get['coupon']).'VNĐ</td>
                                        </tr>';
                                    }
                                    ?>
                                    <tr style="background: #fafafa">
                                        <td colspan="3" class="font-weight-600">Thành tiền<br/><span style="font-style: italic;">(Tổng số tiền thanh toán)</span></td>
                                        <td class="text-center" style="font-weight: 600; font-size: 17px;color: red;"><?php echo number_format($get['money']).' VNĐ'; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="btn-tks clearfix">
                    <button type="button" onclick="window.location.href='<?php echo base_url() ?>trang-chu'" class="btn-next-checkout pull-left">Tiếp tục mua hàng</button>
                    <button type="button" onclick="window.print()" class="btn-update-order pull-left">In</button>
                </div>
            </div>
        </div>
    </div>
</div>
</section>