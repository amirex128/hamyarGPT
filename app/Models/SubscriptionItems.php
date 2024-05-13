<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $subscription_id
 * @property string $stripe_id
 * @property string $stripe_product
 * @property string $stripe_price
 * @property int|null $quantity
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems query()
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereStripeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereStripePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereStripeProduct($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereSubscriptionId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|SubscriptionItems whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class SubscriptionItems extends Model
{
    use HasFactory;
    protected $table = 'subscription_items';

}
