<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * 
 *
 * @property int $id
 * @property int $plan_id
 * @property string|null $plan_name
 * @property string|null $gateway_code
 * @property string|null $gateway_title
 * @property string|null $product_id
 * @property string|null $price_id
 * @property array|null $payload
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\RevenueCatProducts> $revenuecat_products
 * @property-read int|null $revenuecat_products_count
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts query()
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts whereGatewayCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts whereGatewayTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts wherePayload($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts wherePlanName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts wherePriceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|GatewayProducts whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class GatewayProducts extends Model
{
    protected $table = 'gatewayproducts';

    protected $guarded = [];

    protected $casts = [
        'payload' => 'array'
    ];

    public function revenuecat_products(): HasMany
    {
        return $this->hasMany(RevenueCatProducts::class, 'gatewayproduct_id', 'id');
    }
}
