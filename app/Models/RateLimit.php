<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string $ip_address
 * @property int $attempts
 * @property string|null $last_attempt_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $type
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit query()
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit whereAttempts($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit whereIpAddress($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit whereLastAttemptAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|RateLimit whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class RateLimit extends Model
{
    use HasFactory;
    protected $fillable = [
        'ip_address',
        'attempts',
        'type',
        'last_attempt_at',
    ];
}
