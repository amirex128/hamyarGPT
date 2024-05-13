<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $system
 * @property string $title
 * @property string $subject
 * @property string $content
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates query()
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates whereSubject($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates whereSystem($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|EmailTemplates whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class EmailTemplates extends Model
{
    protected $table = 'email_templates'; // 'email_templates' is the name of the table in the database

    protected $fillable = [
        'title',
        'subject',
        'content',
        'system'
    ];
}
