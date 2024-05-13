<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string|null $name
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorFilter newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorFilter newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorFilter query()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorFilter whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorFilter whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorFilter whereUserId($value)
 * @mixin \Eloquent
 */
class OpenaiGeneratorFilter extends Model
{
    protected $table = 'openai_filters';

    public $timestamps = false;

    protected $guarded = [];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
