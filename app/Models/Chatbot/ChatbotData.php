<?php

namespace App\Models\Chatbot;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $chatbot_id
 * @property string|null $content
 * @property string|null $type
 * @property string|null $type_value
 * @property string|null $path
 * @property string|null $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereChatbotId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData wherePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereTypeValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotData whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class ChatbotData extends Model
{
    protected $fillable = [
        'chatbot_id',
        'content',
        'type',
        'type_value',
        'path',
        'status'
    ];
}
