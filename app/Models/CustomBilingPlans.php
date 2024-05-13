<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $gateway
 * @property string|null $plan_id
 * @property string|null $main_plan_price_id
 * @property string|null $custom_plan_price_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans query()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans whereCustomPlanPriceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans whereGateway($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans whereMainPlanPriceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans wherePlanId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomBilingPlans whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class CustomBilingPlans extends Model
{
	protected $table = 'custom_biling_plans';
    protected $guarded = [];
}