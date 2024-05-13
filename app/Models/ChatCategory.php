<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string $name
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatCategory whereUserId($value)
 * @mixin \Eloquent
 */
class ChatCategory extends Model
{
    protected $table = 'chat_category';

    protected $fillable = [
        'name',
        'user_id'
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}
