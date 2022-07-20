<section class="card">
            <div class="card-header">
                <h4 class="card-title  text-center"><?php echo $this->lang->line('Secure Checkout Page') . ' (' . $this->lang->line('Invoice') ?>
                    #<?php echo $invoice['tid'] ?>)</h4>
            </div>
            <div class="card-body">
                      <?php
                                    $attributes = array('class' => 'row justify-content-md-center', 'id' => 'login_form');

                                    ?>

                        <?php echo '<input type="hidden" class="form-control" name="id" value="' . $invoice['tid'] . '"/><input type="hidden" class="form-control" name="itype" value="' . $itype . '"/>
                <input type="hidden" class="form-control" name="token" value="' . $token . '"/>'; ?>
                        <div class="row"><div class="col-md-push-3 col-md-6 m-3  ">

                                    <div class="form-group text-center">
                                        <h5><?php
                                            $csrf = array(
        'name' => $this->security->get_csrf_token_name(),
        'hash' => $this->security->get_csrf_hash()
);
                                            $rming = $invoice['total'] - $invoice['pamnt'];
                                            if ($itype == 'rinv' && $invoice['status'] == 'due') {
                                                $rming = $invoice['total'];
                                            }
                                            $surcharge_t = false;
                                            $row = $gateway;
                                            $cid = $row['id'];
                                            $title = $row['name'];
                                            if ($row['surcharge'] > 0) {
                                                $surcharge_t = true;
                                                $fee = '( ' . amountExchange($rming, $invoice['multi']) . '+' . amountFormat_s($row['surcharge']) . ' %)';
                                            } else {
                                                $fee = '';
                                            }
                                            echo $title . ' ' . $fee ?></h5><img class="bg-white round mt-1"
                                                                                 style="max-width:30rem;max-height:6rem"
                                                                                 src="<?= base_url('assets/gateway_logo/' . $gid . '.png') ?>">
                                        <input type="hidden" class="form-control" name="gateway" value="<?= $cid ?>"><input type="hidden" name="<?=$csrf['name'];?>" value="<?=$csrf['hash'];?>" />
                                    </div>
                                    <div class="form-group">
                                        <label for="cardNumber"> <?php echo $this->lang->line('Invoice') ?>
                                            #<?php echo $invoice['tid'] ?> <?php echo $this->lang->line('Total Amount') ?></label>
                                        <input name="total_amount"
                                               value="<?php echo amountExchange($invoice['total'], $invoice['multi']) ?>"
                                               type="text"
                                               class="form-control"


                                               readonly/>

                                    </div>
                                    <div class="form-group">
                                        <label for="cardNumber"><?php echo $this->lang->line('Due Amount') ?></label>
                                        <input name="total_amount"
                                               value="<?php
                                               echo amountExchange($rming, $invoice['multi']); ?>"
                                               type="text"
                                               class="form-control"
                                               readonly/>
                                    </div>




                                <div class="col-12">
                                        <div class="col-12">  <div id="paypal-button-container"></div>
                                </div>
 <div class="col-12">  <div id="paypal-processing" class="alert alert-purple" style="display: none;"><span class="text-white"><i class="ft-refresh-ccw spinner"></i> Payment processing , please do NOT press any key or button.....</span></div>
                              <div id="paypal-done" class="alert alert-purple" style="display: none;"><span class="text-white"><i class="ft-check-circle"></i> Invoice payment received. <a href="<?= $inv_url ?>" class="btn btn-success"><i class="ft-eye"></i>  View Invoice</a></span></div>

                        </div>
                            <div class="form-group">

                                <?php if ($surcharge_t) echo '<br>' . $this->lang->line('Note: Payment Processing'); ?>

                            </div>
                            <div style="display:none;">
                                <div class="col">
                                    <p class="payment-errors"></p>
                                </div>
                            </div>  </div>
                        </div>

            </div>
        </section>
    <script src="https://www.paypal.com/sdk/js?client-id=<?=$gateway['key1'] ?>&disable-funding=credit,card"></script>
<script>
        // Render the PayPal button into #paypal-button-container
       // X-CSRF-TOKEN is also required to add in request, otherwise you will not be able to access the createorder url
        paypal.Buttons({
            // Call your server to set up the transaction
            createOrder: function(data, actions) {
                var _token = "";
                 var data1='order=<?=$invoice['tid'] ?>&itype=<?=$itype ?>';
                //{{route( 'biller.process_card',[$invoice['id'],1,$token,2,$invoice['ins']])}}
                return fetch('<?php echo base_url('billing/process_paypal') ?>', {
                    method: 'post',
                    body : data1,
                  headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
                }).then(function(res) {
                     document.getElementById('paypal-processing').style.display = 'block';
                     document.getElementById('paypal-button-container').style.display = 'none';
                    return res.json();
                }).then(function(orderData) {

                    return orderData.result.id;
                });
            },
            // Call your server to finalize the transaction
            onApprove: function(data, actions) {

                var data1='orderID='+data.orderID+'&itype=<?=$itype ?>';

//{{route('biller.index')}}/paypal_capture/' + data.orderID + '/capture
                return fetch('<?php echo base_url('billing/paypal_capture') ?>', {
                    method: 'post',
                    body : data1,
                      headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
                }).then(function(res) {

                    return res.json();
                }).then(function(orderData) {
                    // Three cases to handle:
                    //   (1) Recoverable INSTRUMENT_DECLINED -> call actions.restart()
                    //   (2) Other non-recoverable errors -> Show a failure message
                    //   (3) Successful transaction -> Show a success / thank you message
                    // Your server defines the structure of 'orderData', which may differ
                    var errorDetail = Array.isArray(orderData.details) && orderData.details[0];
                    if (errorDetail && errorDetail.issue === 'INSTRUMENT_DECLINED') {
                        // Recoverable state, see: "Handle Funding Failures"
                        // https://developer.paypal.com/docs/checkout/integration-features/funding-failure/
                     document.getElementById('paypal-processing').style.display = 'none';
                     document.getElementById('paypal-button-container').style.display = 'block';
                        return actions.restart();
                    }
                    if (errorDetail) {
                        var msg = 'Sorry, your transaction could not be processed.';
                        if (errorDetail.description) msg += '\n\n' + errorDetail.description;
                        if (orderData.debug_id) msg += ' (' + orderData.debug_id + ')';
                        // Show a failure message
                     document.getElementById('paypal-processing').style.display = 'none';
                     document.getElementById('paypal-button-container').style.display = 'block';
                        return alert(msg);
                    }
                    // Show a success message to the buyer
                    document.getElementById('paypal-processing').style.display = 'none';
                    document.getElementById('paypal-done').style.display = 'block';
                  //  alert('Transaction completed by ' + orderData.result.payer.name.given_name);
                });
            },
            onCancel : function () {
                     document.getElementById('paypal-processing').style.display = 'none';
                     document.getElementById('paypal-button-container').style.display = 'block';
            }

        }).render('#paypal-button-container');
    </script>