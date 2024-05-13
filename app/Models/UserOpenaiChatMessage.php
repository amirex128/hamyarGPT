<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_openai_chat_id
 * @property int|null $user_id
 * @property string|null $input
 * @property string|null $response
 * @property string|null $output
 * @property string|null $hash
 * @property string|null $credits
 * @property string|null $words
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $images
 * @property string|null $pdfName
 * @property string|null $pdfPath
 * @property string|null $outputImage
 * @property int $realtime
 * @property int $is_chatbot
 * @property-read \App\Models\UserOpenaiChat|null $chat
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereCredits($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereHash($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereImages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereInput($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereIsChatbot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereOutput($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereOutputImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage wherePdfName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage wherePdfPath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereRealtime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereResponse($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereUserOpenaiChatId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChatMessage whereWords($value)
 * @mixin \Eloquent
 */
class UserOpenaiChatMessage extends Model
{
    use HasFactory;

    protected $table = 'user_openai_chat_messages';

    public function chat(){
        return $this->belongsTo(UserOpenaiChat::class, 'user_openai_chat_id', 'id');
    }
}
