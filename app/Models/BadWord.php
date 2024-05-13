<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Collection;

/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property string $words
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord query()
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|BadWord whereWords($value)
 * @mixin \Eloquent
 */
class BadWord extends Model
{
    protected $fillable = [
        'user_id',
        'words',
        'language',
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }


    public function getWordsAsCollection(): Collection
    {
        return str($this->words)->explode(',')
            ->map(fn ($word) => trim(strtolower($word)))
            ->filter(fn ($word) => strlen($word) > 0);
    }

    public function getWordsAsArray(): array
    {
        return $this->getWordsAsCollection()->toArray();
    }
}
