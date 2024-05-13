<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * 
 *
 * @property int $id
 * @property int|null $team_id
 * @property string $name
 * @property int $created_by
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserOpenai> $userOpenais
 * @property-read int|null $user_openais_count
 * @method static \Illuminate\Database\Eloquent\Builder|Folders newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Folders newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Folders query()
 * @method static \Illuminate\Database\Eloquent\Builder|Folders whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Folders whereCreatedBy($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Folders whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Folders whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Folders whereTeamId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Folders whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Folders extends Model
{
    protected $fillable = [
        'name',
        'created_by',
        'team_id'
    ];

    public function userOpenais(): HasMany
    {
        return $this->hasMany(UserOpenai::class, 'folder_id');
    }
}
