{nocache}
    <p class="payment_module">
        {l s='Wait for redirection, or submit form' mod='fondy'}
        <br/>
        <br/>
        <button style="outline: none;
    border-radius: 7px;
    text-decoration: none;
    box-sizing: content-box;
    width: 200px;
    text-transform: uppercase;
    font-weight: 700;
    padding: 0;
    color: #fcfcfc!important;
    border-color: #62ba46;
    background: #62ba46;
    border-width: 10px;
    border-style: solid;
    border-image-outset: 4px;" onclick="javascript:$('#fondy').submit();" title="{l s='Pay via Fondy' mod='fondy'}">
            {l s='To checkout' mod='fondy'}
        </button>
    </p>
    <form id="fondy" method="post" action="{$fondy_url}">
        <input type="hidden" name="order_id" value="{$order_id}"/>
        <input type="hidden" name="merchant_id" value="{$merchant_id}"/>
        <input type="hidden" name="order_desc" value="{$order_desc}"/>
        <input type="hidden" name="amount" value="{$amount}"/>
        <input type="hidden" name="currency" value="{$currency}"/>
        <input type="hidden" name="server_callback_url" value="{$server_callback_url}"/>
        <input type="hidden" name="response_url" value="{$response_url}"/>
        <input type="hidden" name="lang" value="{$lang}"/>
        <input type="hidden" name="sender_email" value="{$sender_email}"/>
        <input type="hidden" name="signature" value="{$signature}"/>
        <input type="hidden" value="{l s='Оплатить' mod='fondy'}">
    </form>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#fondy').submit();
        });
    </script>
{/nocache}