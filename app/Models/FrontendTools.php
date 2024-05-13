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
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools query()
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|FrontendTools whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class FrontendTools extends Model
{
    protected $table = 'frontend_tools';
}
