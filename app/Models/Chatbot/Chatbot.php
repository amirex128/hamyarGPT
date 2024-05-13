<?php

namespace App\Models\Chatbot;

use App\Models\User;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string|null $title
 * @property string|null $role
 * @property string|null $model
 * @property string|null $first_message
 * @property string|null $instructions
 * @property string|null $chatbot_interests
 * @property string|null $image
 * @property string|null $color
 * @property string|null $width
 * @property string|null $height
 * @property string|null $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Chatbot\ChatbotData> $data
 * @property-read int|null $data_count
 * @property-read mixed $image_url
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\Chatbot\ChatbotData> $trainingData
 * @property-read int|null $training_data_count
 * @property-read User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot query()
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereChatbotInterests($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereFirstMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereHeight($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereInstructions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereModel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereRole($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Chatbot whereWidth($value)
 * @mixin \Eloquent
 */
class Chatbot extends Model
{
    protected $table = 'chatbot';

    protected $fillable = [
        'user_id',
        'title',
        'role',
        'model',
        'first_message',
        'instructions',
        'chatbot_interests',
        'image',
        'width',
        'height',
        'color',
        'status'
    ];

    public function imageUrl(): Attribute
    {
        return new Attribute(
            get: fn () => asset('uploads/' . $this->image)
        );
    }

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function data(): HasMany
    {
        return $this->hasMany(ChatbotData::class, 'chatbot_id');
    }

    public function trainingData(): HasMany
    {
        return $this->hasMany(ChatbotData::class, 'chatbot_id', 'id')
            ->where('status', 'trained');
    }
}
