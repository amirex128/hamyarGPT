<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string $avatar
 * @property string|null $alt
 * @property string|null $title
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Clients newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Clients newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Clients query()
 * @method static \Illuminate\Database\Eloquent\Builder|Clients whereAlt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Clients whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Clients whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Clients whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Clients whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Clients whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Clients extends Model
{
    protected $table = 'clients';

    protected $fillable = [
        'avatar',
        'alt',
        'title'
    ];
}
