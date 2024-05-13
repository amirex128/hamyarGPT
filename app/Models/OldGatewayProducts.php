<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $plan_id
 * @property string|null $plan_name
 * @property string|null $gateway_code
 * @property string|null $product_id
 * @property string|null $old_price_id
 * @property string|null $new_price_id
 * @property string|null $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $old_product_id
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts query()
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereGatewayCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereNewPriceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereOldPriceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereOldProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts wherePlanName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OldGatewayProducts whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class OldGatewayProducts extends Model
{
    protected $table = 'oldgatewayproducts';

    protected $guarded = [];
}
