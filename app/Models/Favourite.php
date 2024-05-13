<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $user_id
 * @property string $type
 * @property int $item_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite query()
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite whereItemId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Favourite whereUserId($value)
 * @mixin \Eloquent
 */
class Favourite extends Model
{
    use HasFactory;
    protected $table = 'favourite_list';
    protected $guarded = [];
}
