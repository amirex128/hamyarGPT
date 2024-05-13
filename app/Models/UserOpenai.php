<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property int|null $team_id
 * @property int|null $user_id
 * @property int|null $openai_id
 * @property string|null $input
 * @property string|null $response
 * @property string|null $output
 * @property string|null $hash
 * @property string|null $credits
 * @property string|null $words
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $title
 * @property string|null $slug
 * @property string|null $storage
 * @property int|null $folder_id
 * @property array|null $payload
 * @property-read \App\Models\Folders|null $folder
 * @property-read \App\Models\OpenAIGenerator|null $generator
 * @property-read mixed $format_date
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereCredits($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereFolderId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereHash($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereInput($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereOpenaiId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereOutput($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai wherePayload($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereResponse($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereSlug($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereStorage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereTeamId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserOpenai whereWords($value)
 * @mixin \Eloquent
 */
class UserOpenai extends Model
{
    protected $table = 'user_openai';

    protected $guarded = [];

    protected $casts = [
        'payload' => 'array'
    ];

    protected $appends = [
        'format_date'
    ];

    // STORAGE
    public const STORAGE_LOCAL = "public";

    public const STORAGE_AWS = "s3";

    public function generator(): BelongsTo
    {
        return $this->belongsTo(OpenAIGenerator::class , 'openai_id','id' );
    }

    public function folder(): BelongsTo
    {
        return $this->belongsTo(Folders::class);
    }

    public function getFormatDateAttribute()
    {
        if($this?->created_at) {
            return  $this?->created_at?->format('M d, Y');
        }
        else {
            return null;
        }
    }
}
