<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property int|null $user_id
 * @property float $amount
 * @property string $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\User|null $user
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate query()
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate whereAmount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|UserAffiliate whereUserId($value)
 * @mixin \Eloquent
 */
class UserAffiliate extends Model
{
    use HasFactory;
    protected $table = 'user_affiliates';

    public function user(){
        return $this->belongsTo(User::class);
    }
}
