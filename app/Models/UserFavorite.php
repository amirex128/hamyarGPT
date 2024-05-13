<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property int|null $openai_id
 * @method static \Illuminate\Database\Eloquent\Builder|UserFavorite newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserFavorite newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserFavorite query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserFavorite whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserFavorite whereOpenaiId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserFavorite whereUserId($value)
 * @mixin \Eloquent
 */
class UserFavorite extends Model
{
    use HasFactory;
    public $timestamps = false;
}
