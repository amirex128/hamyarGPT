<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $version
 * @property string|null $slug
 * @property int $installed
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $is_theme
 * @method static \Illuminate\Database\Eloquent\Builder|Extension newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Extension newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Extension query()
 * @method static \Illuminate\Database\Eloquent\Builder|Extension whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Extension whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Extension whereInstalled($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Extension whereIsTheme($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Extension whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Extension whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Extension whereVersion($value)
 * @mixin \Eloquent
 */
class Extension extends Model
{
    protected $table = 'extensions';

    protected $guarded = [];
}
