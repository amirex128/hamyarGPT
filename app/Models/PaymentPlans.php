<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $active
 * @property string|null $name
 * @property float $price
 * @property string $currency
 * @property string $frequency
 * @property int $is_featured
 * @property int $is_free
 * @property string|null $stripe_product_id
 * @property string|null $total_words
 * @property string|null $total_images
 * @property string|null $ai_name
 * @property int|null $max_tokens
 * @property int|null $can_create_ai_images
 * @property string $plan_type
 * @property string|null $features
 * @property string $type
 * @property int $is_team_plan
 * @property int|null $plan_allow_seat
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $trial_days
 * @property int $display_imag_count
 * @property int $display_word_count
 * @property array|null $open_ai_items
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\GatewayProducts> $gateway_products
 * @property-read int|null $gateway_products_count
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\RevenueCatProducts> $revenuecat_products
 * @property-read int|null $revenuecat_products_count
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans query()
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereAiName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereCanCreateAiImages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereCurrency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereDisplayImagCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereDisplayWordCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereFeatures($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereFrequency($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereIsFeatured($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereIsFree($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereIsTeamPlan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereMaxTokens($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereOpenAiItems($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans wherePlanAllowSeat($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans wherePlanType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereStripeProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereTotalImages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereTotalWords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereTrialDays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PaymentPlans whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class PaymentPlans extends Model
{
    protected $table = 'plans';

    protected $guarded = [];

    protected $casts = [
      'open_ai_items' => 'json'
    ];

    // gateway_products
    public function gateway_products()
    {
        return $this->hasMany(GatewayProducts::class, 'plan_id', 'id');
    }

    // revenuecat_products
    public function revenuecat_products()
    {
        return $this->hasMany(RevenueCatProducts::class, 'plan_id', 'id');
    }

    public function checkOpenAiItemCount(): int
    {
        $items = is_array($this->open_ai_items) ? $this->open_ai_items : [];

        return count($items);
    }

    public function checkOpenAiItem($key): bool
    {
        $items = $this->open_ai_items ?: [];

        return in_array($key, $items);
    }
}
