{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2012 PrestaShop SA
*  @version  Release: $Revision: 14011 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<div class="row">
    <div class="col-xs-12">
        <p class="payment_module">
            <a style="padding:10px 20px" href="{$link->getModuleLink('fondy_banking', 'redirect', ['id_cart' => {$id}])}"
               title="{l s='Pay fondy' mod='fondy_banking'}">
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/csob.svg" alt="1" />
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/mbank.svg" alt="1" />
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/otp.svg" alt="1" />
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/pabk.svg" alt="1" /><br/>
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/prima.svg" alt="1" />
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/sberbank.svg" alt="1" />
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/slsp.svg" alt="1" />
                <img style="margin-right: 10px" width="50" src="{$this_path nofilter}img/banks/vub.svg" alt="1" />
                <fondy style="position: relative;bottom: 25px;">{$this_description}</fondy>
            </a>
        </p>
    </div>
</div>