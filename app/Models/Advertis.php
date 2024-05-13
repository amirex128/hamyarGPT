<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string $key
 * @property string $title
 * @property string|null $tracking_code
 * @property bool $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis active()
 * @method static \Database\Factories\AdvertisFactory factory($count = null, $state = [])
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis query()
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis whereKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis whereTrackingCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Advertis whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Advertis extends Model
{
    use HasFactory;

    protected $table = 'advertis';

    protected $fillable = [
        'key',
        'title',
        'tracking_code',
        'status',
    ];

    protected $casts = [
        'status' => 'boolean'
    ];

    public function trackingCode(): Attribute
    {
        return Attribute::make(
            get: function ($value) {
                return json_decode($value, true);
            },
            set: function ($value) {
                return json_encode($value);
            }
        );
    }

    public function scopeActive($query)
    {
        return $query->where('status', true);
    }
}
