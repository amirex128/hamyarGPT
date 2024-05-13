<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $type
 * @property string|null $lang
 * @property string|null $content
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms query()
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms whereLang($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PrivacyTerms whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class PrivacyTerms extends Model
{
    use HasFactory;

    protected $fillable = [
        'type',
        'lang_code',
        'content',
    ];
    
}
