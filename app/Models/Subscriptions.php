<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property int|null $plan_id
 * @property string $name
 * @property string $stripe_id
 * @property string $stripe_status
 * @property string|null $stripe_price
 * @property int|null $quantity
 * @property string|null $trial_ends_at
 * @property string|null $ends_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $paid_with
 * @property string|null $tax_rate
 * @property string|null $tax_value
 * @property string|null $coupon
 * @property string|null $total_amount
 * @property int $auto_renewal
 * @property-read \App\Models\PaymentPlans|null $plan
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions query()
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereAutoRenewal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereCoupon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions wherePaidWith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereStripeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereStripePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereStripeStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereTaxRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereTaxValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereTotalAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereTrialEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Subscriptions whereUserId($value)
 * @mixin \Eloquent
 */
class Subscriptions extends Model
{
    protected $table = 'subscriptions';

    protected $fillable = [
        'stripe_status',
        'plan_id'
    ];


    public function plan(): BelongsTo
    {
        return $this->belongsTo(PaymentPlans::class, 'plan_id');
    }    
}
