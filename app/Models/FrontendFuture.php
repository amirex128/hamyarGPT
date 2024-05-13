<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * 
 *
 * @property int $id
 * @property string|null $title
 * @property string|null $description
 * @property string|null $image
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture query()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendFuture whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class FrontendFuture extends Model
{
    protected $table = 'frontend_future';

    protected $guarded = [];
}
