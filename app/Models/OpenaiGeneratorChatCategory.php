<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property int|null $chatbot_id
 * @property string|null $name
 * @property string|null $short_name
 * @property string|null $slug
 * @property string|null $description
 * @property string|null $instructions
 * @property string|null $first_message
 * @property string|null $role
 * @property string|null $human_name
 * @property string|null $helps_with
 * @property string|null $prompt_prefix
 * @property string|null $image
 * @property string|null $color
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $chat_completions
 * @property string|null $plan
 * @property string|null $category
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory query()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereCategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereChatCompletions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereChatbotId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereFirstMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereHelpsWith($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereHumanName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereInstructions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory wherePlan($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory wherePromptPrefix($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereRole($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereShortName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenaiGeneratorChatCategory whereUserId($value)
 * @mixin \Eloquent
 */
class OpenaiGeneratorChatCategory extends Model
{
    protected $table = 'openai_chat_category';

    protected $guarded = [];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
