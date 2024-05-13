<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int $chat_id
 * @property string $content
 * @property string $vector
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData query()
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData whereChatId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|PdfData whereVector($value)
 * @mixin \Eloquent
 */
class PdfData extends Model
{
    use HasFactory;
    protected $table = 'pdf_data';
}
