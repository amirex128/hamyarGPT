<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $title
 * @property string|null $color
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho query()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho whereColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendForWho whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class FrontendForWho extends Model
{
    use HasFactory;

    protected $table = 'frontend_who_is_for';
}
