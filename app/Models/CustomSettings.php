<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Mews\Purifier\Casts\CleanHtml;      

/**
 * 
 *
 * @property int $id
 * @property string $key
 * @property string|null $title
 * @property string|null $value_str
 * @property string|null $value_text
 * @property string|null $value_longtext
 * @property array|null $value_html
 * @property int $value_int
 * @property int|null $value_bigint
 * @property int|null $value_ubigint
 * @property float $value_double
 * @property int $value_bool
 * @property string|null $value_date
 * @property string|null $value_timestamp
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings query()
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereKey($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueBigint($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueBool($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueDouble($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueHtml($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueInt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueLongtext($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueStr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueTimestamp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|CustomSettings whereValueUbigint($value)
 * @mixin \Eloquent
 */
class CustomSettings extends Model
{
    use HasFactory;
    protected $table = 'customsettings';

    protected $casts = [                
        'value_html' => CleanHtml::class,    
    ];      

}
