<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property-read \App\Models\PaymentPlans|null $plan
 * @method static \Illuminate\Database\Eloquent\Builder|TwoCheckoutSubscriptions newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TwoCheckoutSubscriptions newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TwoCheckoutSubscriptions query()
 * @mixin \Eloquent
 */
class TwoCheckoutSubscriptions extends Model
{
    use HasFactory;
    protected $table = 'subscriptions_twocheckout';
    protected $fillable = [
        'subscription_status',
        'plan_id'
    ];

    public function plan()
    {
        return $this->belongsTo(PaymentPlans::class, 'plan_id');
    }  
}
