<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property int|null $user_openai_id
 * @method static \Illuminate\Database\Eloquent\Builder|UserDocsFavorite newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserDocsFavorite newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserDocsFavorite query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserDocsFavorite whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserDocsFavorite whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserDocsFavorite whereUserOpenaiId($value)
 * @mixin \Eloquent
 */
class UserDocsFavorite extends Model
{
	protected $table = 'user_docs_favorite';
	public $timestamps = false;
}