<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $code
 * @property string|null $title
 * @property int $is_active
 * @property string|null $mode
 * @property string|null $sandbox_client_id
 * @property string|null $sandbox_client_secret
 * @property string|null $sandbox_app_id
 * @property string|null $live_client_id
 * @property string|null $live_client_secret
 * @property string|null $live_app_id
 * @property string|null $payment_action
 * @property string|null $currency
 * @property string|null $currency_locale
 * @property string|null $notify_url
 * @property string|null $base_url
 * @property string|null $sandbox_url
 * @property string|null $locale
 * @property string|null $validate_ssl
 * @property string|null $webhook_secret
 * @property string|null $logger
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $webhook_id
 * @property string|null $tax
 * @property string|null $bank_account_details
 * @property string|null $bank_account_other
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways query()
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereBankAccountDetails($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereBankAccountOther($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereBaseUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereCurrency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereCurrencyLocale($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereIsActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereLiveAppId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereLiveClientId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereLiveClientSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereLocale($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereLogger($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereMode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereNotifyUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways wherePaymentAction($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereSandboxAppId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereSandboxClientId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereSandboxClientSecret($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereSandboxUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereTax($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereValidateSsl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereWebhookId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Gateways whereWebhookSecret($value)
 * @mixin \Eloquent
 */
class Gateways extends Model
{
    use HasFactory;
    protected $table = 'gateways';

}
