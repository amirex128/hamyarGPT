<?php

namespace App\Models\Team;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * 
 *
 * @property int $id
 * @property int $team_id
 * @property int|null $user_id
 * @property string $role
 * @property string|null $email
 * @property string|null $status
 * @property int $allow_unlimited_credits
 * @property int|null $remaining_images
 * @property int|null $remaining_words
 * @property int $used_image_credit
 * @property int $used_word_credit
 * @property \Illuminate\Support\Carbon|null $joined_at
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Team\Team $team
 * @property-read User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember query()
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereAllowUnlimitedCredits($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereJoinedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereRemainingImages($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereRemainingWords($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereRole($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereTeamId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereUsedImageCredit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereUsedWordCredit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|TeamMember whereUserId($value)
 * @mixin \Eloquent
 */
class TeamMember extends Model
{
    protected $fillable = [
        'team_id',
        'user_id',
        'role',
        'email',
        'status',
        'allow_unlimited_credits',
        'remaining_images',
        'remaining_words',
        'used_image_credit',
        'used_word_credit',
        'joined_at',
    ];

    protected $casts = [
        'joined_at' => 'datetime'
    ];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function team(): BelongsTo
    {
        return $this->belongsTo(Team::class);
    }
}
