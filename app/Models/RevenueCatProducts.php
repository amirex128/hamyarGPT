<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $plan_id
 * @property int|null $gatewayproduct_id
 * @property string|null $entitlement_id
 * @property string|null $package_id
 * @property string|null $google_id
 * @property string|null $apple_id
 * @property string|null $amazon_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\GatewayProducts|null $gateway_product
 * @property-read \App\Models\PaymentPlans|null $plan
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts query()
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereAmazonId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereAppleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereEntitlementId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereGatewayproductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereGoogleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts wherePackageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RevenueCatProducts whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class RevenueCatProducts extends Model
{
    use HasFactory;
    protected $table = 'revenuecat_products';

    /// Return the gateway product of this revenuecat product defined as foreign key
    public function gateway_product()
    {
        return $this->belongsTo(GatewayProducts::class, 'gatewayproduct_id', 'id');
    }

    /// Return the plan of this revenuecat product defined as foreign key
    public function plan()
    {
        return $this->belongsTo(PaymentPlans::class, 'plan_id', 'id');
    }

}