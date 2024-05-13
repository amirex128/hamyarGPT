<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * 
 *
 * @property int $id
 * @property int|null $team_id
 * @property int|null $user_id
 * @property int|null $chatbot_id
 * @property int|null $openai_chat_category_id
 * @property string|null $title
 * @property string|null $total_credits
 * @property string|null $total_words
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $is_chatbot
 * @property string|null $website_url
 * @property string $reference_url
 * @property string $doc_name
 * @property-read \App\Models\OpenaiGeneratorChatCategory|null $category
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserOpenaiChatMessage> $messages
 * @property-read int|null $messages_count
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereChatbotId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereDocName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereIsChatbot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereOpenaiChatCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereReferenceUrl($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereTeamId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereTotalCredits($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereTotalWords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenaiChat whereWebsiteUrl($value)
 * @mixin \Eloquent
 */
class UserOpenaiChat extends Model
{
    protected $table = 'user_openai_chat';

    protected $guarded = [];

    public function messages(): HasMany
    {
        return $this->hasMany(UserOpenaiChatMessage::class);
    }

    public function category(): BelongsTo
    {
        return $this->belongsTo(OpenaiGeneratorChatCategory::class, 'openai_chat_category_id', 'id' );
    }
}
