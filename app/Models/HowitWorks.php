<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Mews\Purifier\Casts\CleanHtml;

/**
 * 
 *
 * @property int $id
 * @property int $order
 * @property array|null $title
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks query()
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks whereOrder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|HowitWorks whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class HowitWorks extends Model
{
    protected $table = 'howitworks';

    protected $guarded = [];

    protected $casts = [
        'title' => CleanHtml::class,
    ];

}
