<?php

namespace App\Models\Chatbot;

use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $chatbot_id
 * @property int|null $chatbot_data_id
 * @property string|null $content
 * @property array|null $embedding
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector whereChatbotDataId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector whereChatbotId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector whereEmbedding($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatbotDataVector whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class ChatbotDataVector extends Model
{
    protected  $fillable = [
        'chatbot_id',
        'chatbot_data_id',
        'content',
        'embedding'
    ];


    protected $casts = [
        'embedding' => 'array'
    ];
}
