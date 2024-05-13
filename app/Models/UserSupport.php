<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property string $subject
 * @property string $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string $ticket_id
 * @property string $priority
 * @property string $category
 * @property-read \Illuminate\Database\Eloquent\Collection<int, \App\Models\UserSupportMessage> $messages
 * @property-read int|null $messages_count
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereCategory($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport wherePriority($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereSubject($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereTicketId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupport whereUserId($value)
 * @mixin \Eloquent
 */
class UserSupport extends Model
{
    protected $table = 'user_support';

    protected $guarded = [];

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public function messages(): HasMany
    {
        return $this->hasMany(UserSupportMessage::class)->orderBy('created_at', 'asc');
    }
}
