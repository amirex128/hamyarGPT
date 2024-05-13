<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_support_id
 * @property string $sender
 * @property string $message
 * @property string|null $attachment
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage whereAttachment($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage whereMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage whereSender($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserSupportMessage whereUserSupportId($value)
 * @mixin \Eloquent
 */
class UserSupportMessage extends Model
{
    protected $guarded = [];
}
