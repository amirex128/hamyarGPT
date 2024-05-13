<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $menu_title
 * @property string|null $subtitle_one
 * @property string|null $subtitle_two
 * @property string|null $title
 * @property string|null $text
 * @property string|null $image
 * @property string|null $image_title
 * @property string|null $image_subtitle
 * @property string|null $color
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators query()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereImageSubtitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereImageTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereMenuTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereSubtitleOne($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereSubtitleTwo($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendGenerators whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class FrontendGenerators extends Model
{
    protected $table = 'frontend_generators';

    protected $guarded = [];
}
