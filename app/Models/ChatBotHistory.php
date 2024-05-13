<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string|null $ip
 * @property int|null $user_openai_chat_id
 * @property int|null $openai_chat_category_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory query()
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory whereIp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory whereOpenaiChatCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ChatBotHistory whereUserOpenaiChatId($value)
 * @mixin \Eloquent
 */
class ChatBotHistory extends Model
{
    use HasFactory;
    protected $table = 'chatbot_history'; 
}
