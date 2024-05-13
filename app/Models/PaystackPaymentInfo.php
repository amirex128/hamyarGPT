<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string|null $email
 * @property string|null $reference
 * @property string|null $trans
 * @property string|null $status
 * @property string|null $message
 * @property string|null $transaction
 * @property string|null $trxref
 * @property string|null $amount
 * @property string|null $currency
 * @property string|null $plan_code
 * @property string|null $customer_code
 * @property string|null $other
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo query()
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereCurrency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereCustomerCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereOther($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo wherePlanCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereReference($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereTrans($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereTransaction($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereTrxref($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaystackPaymentInfo whereUserId($value)
 * @mixin \Eloquent
 */
class PaystackPaymentInfo extends Model
{
    use HasFactory;


    protected $fillable = [ 
        'user_id',
        'email',
        'reference',
        'trans',
        'status',
        'message',
        'transaction',
        'trxref',
        'amount',
        'currency',
        'plan_code',
        'customer_code',
        'other'
    ];
}
