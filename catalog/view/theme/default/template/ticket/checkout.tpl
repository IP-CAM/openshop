<?php echo $header; ?>

<?php
    $purchase_items = array(
        '1' => array(
            'zone' => '101',
            'quantity' => '1',
            'name' => 'VVIP',
            'price' => '328.00',
            'subtotal' => '328.00'
        ),
        '2' => array(
            'zone' => '201',
            'quantity' => '2',
            'name' => 'VIP',
            'price' => '268.00',
            'subtotal' => '536.00'
        )
    );
?>

<div class="container">
    <div class="col-xs-12" id="order-summary">
        <h2>Order Summary</h2>
        <table class="table table-striped col-xs-12">
            <tr>
                <th>Name</th>
                <th>Price</th>
                <th>Zone</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <?php foreach($purchase_items as $row => $item) { ?>
            <tr>
                <td><?php echo $item['name'] ?></td>
                <td><?php echo $item['price'] ?></td>
                <td><?php echo $item['zone'] ?></td>
                <td><?php echo $item['quantity'] ?></td>
                <td><?php echo $item['subtotal'] ?></td>
                <input type="hidden" name="<?php echo $row ?>[name]" value="<?php echo $item['name'] ?>">
                <input type="hidden" name="<?php echo $row ?>[price]" value="<?php echo $item['price'] ?>">
                <input type="hidden" name="<?php echo $row ?>[zone]" value="<?php echo $item['zone'] ?>">
                <input type="hidden" name="<?php echo $row ?>[quantity]" value="<?php echo $item['quantity'] ?>">
                <input type="hidden" name="<?php echo $row ?>[subtotal]" value="<?php echo $item['subtotal'] ?>">
            </tr>
            <?php } ?>
        </table>
        <table class="table-total table-striped col-sm-4 col-sm-offset-8">
            <td>Total (incl. GST)</td>
            <td id="total">$total</td>
            <input type="hidden" value="" name="total">
            </tr>
        </table>
    </div>
    <div class="col-xs-12" id="shipping-methods">
        <h2>Shipping Method</h2>
        <div class="radio">
            <label for="shipping-pickup">
                <input type="radio" name="shipping-method" id="shipping-pickup" value="pickup">
                Pickup
            </label>
        </div>
        <div class="radio">
            <label for="shipping-mail">
                <input type="radio" name="shipping-method" id="shipping-mail" value="mail">
                Mail
            </label>
        </div>
    </div>
    <div class="col-xs-12" id="shipping-details">
        <h2>Shipping Detail</h2>
        <div id="shipping-detail-pickup">
            Just Come
        </div>
        <div id="shipping-detail-mail">
            Address Here
        </div>
    </div>
</div>

<?php echo $footer; ?>