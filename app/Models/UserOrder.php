<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property string|null $order_id
 * @property int|null $plan_id
 * @property string|null $payment_type
 * @property float|null $price
 * @property string $status
 * @property string $country
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int|null $user_id
 * @property string $type
 * @property float $affiliate_earnings
 * @property string|null $tax_rate
 * @property string|null $tax_value
 * @property array|null $payload
 * @property-read \App\Models\PaymentPlans|null $plan
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereAffiliateEarnings($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereCountry($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereOrderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder wherePayload($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder wherePaymentType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereTaxRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereTaxValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOrder whereUserId($value)
 * @mixin \Eloquent
 */
class UserOrder extends Model
{

    protected $guarded = [];

    protected $casts = [
        'payload' => 'array'
    ];

    public function plan(): BelongsTo
    {
        return $this->belongsTo(PaymentPlans::class);
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
