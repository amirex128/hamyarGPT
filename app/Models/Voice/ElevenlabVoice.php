<?php

namespace App\Models\Voice;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string $name
 * @property string|null $voice_id
 * @property string|null $path
 * @property int $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice query()
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice wherePath($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ElevenlabVoice whereVoiceId($value)
 * @mixin \Eloquent
 */
class ElevenlabVoice extends Model
{
    protected $fillable = [
        'user_id',
        'name',
        'voice_id',
        'path',
        'status'
    ];
}
