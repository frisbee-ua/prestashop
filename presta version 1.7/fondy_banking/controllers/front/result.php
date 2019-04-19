<?php

require_once(dirname(__FILE__).'../../../fondy_banking.php');
require_once(dirname(__FILE__).'../../../fondy.cls.php');

class fondy_bankingResultModuleFrontController extends ModuleFrontController {
    /**
     * @see FrontController::postProcess()
     */
    public function postProcess() {

        $fondy = new fondy_banking();

        if ($_POST['order_status'] == FondyCls::ORDER_DECLINED) {
            $this->errors[] = Tools::displayError('Order declined');
        }
		if ($_POST['order_status'] == 'processing') {
            $this->errors[] = Tools::displayError('Payment proccesing');
		}
		
		
        $settings = array(
            'merchant_id' => $fondy->getOption('merchant'),
            'secret_key' => $fondy->getOption('secret_key')
        );

        $isPaymentValid = FondyCls::isPaymentValid($settings, $_POST);
        if ($isPaymentValid !== true) {
            $this->errors[] = Tools::displayError($isPaymentValid);
        }

        $cart = $this->context->cart;

        if ($cart->id_customer == 0 || $cart->id_address_delivery == 0 || $cart->id_address_invoice == 0 || !$this->module->active) {
            Tools::redirect('index.php?controller=order&step=1');
        }

        $customer = new Customer($cart->id_customer);
        if (!Validate::isLoadedObject($customer)) {
            Tools::redirect('index.php?controller=order&step=1');
        }

        if (empty($this->errors)) {

            list($orderId,) = explode(FondyCls::ORDER_SEPARATOR, $_POST['order_id']);
            $history = new OrderHistory();
            $history->id_order = $orderId;
            $history->changeIdOrderState((int)Configuration::get('PS_OS_PAYMENT'), $orderId);
            $history->addWithemail(true, array(
                'order_name' => $orderId
            ));

            Tools::redirect('index.php?controller=order-confirmation&id_cart=' . $cart->id . '&id_module=' . $this->module->id . '&id_order=' . $this->module->currentOrder . '&key=' . $customer->secure_key);
        }
    }
}