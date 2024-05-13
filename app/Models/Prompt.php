<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string $title
 * @property string $prompt
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property int $user_id
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt query()
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt wherePrompt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Prompt whereUserId($value)
 * @mixin \Eloquent
 */
class Prompt extends Model
{
    protected $table = 'prompt_library';
    use HasFactory;
    protected $guarded = [];
}
