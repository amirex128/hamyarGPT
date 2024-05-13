<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Mews\Purifier\Casts\CleanHtml;

/**
 * 
 *
 * @property int $id
 * @property string $avatar
 * @property string|null $full_name
 * @property string|null $job_title
 * @property array|null $words
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials query()
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials whereFullName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials whereJobTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Testimonials whereWords($value)
 * @mixin \Eloquent
 */
class Testimonials extends Model
{
    protected $table = 'testimonials';

    protected $casts = [
        'words' => CleanHtml::class,
    ];

}
