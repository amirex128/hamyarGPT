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
 * @property string $title
 * @property string $description
 * @property string|null $slug
 * @property int $active
 * @property string|null $questions
 * @property string|null $image
 * @property int $premium
 * @property string $type
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $prompt
 * @property int $custom_template
 * @property int $tone_of_voice
 * @property string|null $color
 * @property string|null $filters
 * @property string|null $package
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator query()
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereColor($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereCustomTemplate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereFilters($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator wherePackage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator wherePremium($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator wherePrompt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereQuestions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereToneOfVoice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|OpenAIGenerator whereUserId($value)
 * @mixin \Eloquent
 */
class OpenAIGenerator extends Model
{
    protected $table = 'openai';

    protected $guarded = [];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }
}
