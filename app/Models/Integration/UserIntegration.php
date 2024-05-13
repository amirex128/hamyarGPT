<?php

namespace App\Models\Integration;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property int|null $integration_id
 * @property int|null $user_id
 * @property array|null $credentials
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Integration\Integration|null $integration
 * @property-read User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration whereCredentials($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration whereIntegrationId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserIntegration whereUserId($value)
 * @mixin \Eloquent
 */
class UserIntegration extends Model
{
    protected $table ='user_integrations';

    protected $fillable = ['integration_id', 'user_id', 'credentials'];

    protected $casts = [
        'credentials' => 'array'
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function integration(): BelongsTo
    {
        return $this->belongsTo(Integration::class);
    }
}
