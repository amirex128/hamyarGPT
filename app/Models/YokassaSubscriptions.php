<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property int|null $plan_id
 * @property string $name
 * @property string $payment_method_id
 * @property string $subscription_status
 * @property string|null $trial_ends_at
 * @property string|null $ends_at
 * @property string|null $next_pay_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $tax_rate
 * @property string|null $tax_value
 * @property string|null $coupon
 * @property string|null $total_amount
 * @property int $auto_renewal
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions query()
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereAutoRenewal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereCoupon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereNextPayAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions wherePaymentMethodId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereSubscriptionStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereTaxRate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereTaxValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereTotalAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereTrialEndsAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|YokassaSubscriptions whereUserId($value)
 * @mixin \Eloquent
 */
class YokassaSubscriptions extends Model
{
    protected $table = 'subscriptions_yokassa';

    protected $guarded = [];
}
